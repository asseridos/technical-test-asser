module Members
  class NotesController < ApplicationController

    respond_to :js, only: %i[new create]

    def new
      @member = Member.find(params[:member_id])
      @note = @member.notes.new
      respond_with @member, @note
    end

    def create
      @member = Member.find(params[:member_id])
      @note = @member.notes.new(note_params)

      if @note.save
        redirect_to @member
      else
        render :new
      end
    end


    private

    def note_params
      params.require(:note).permit(:body)
    end
  end
end
