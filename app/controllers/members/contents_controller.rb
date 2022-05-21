module Members
    class ContentsController < ApplicationController
    
        respond_to :js, only: %i[new create edit update]

        def new
            @member = Member.find(params[:member_id])
            @content = @member.contents.new
            respond_with @member, @content
        end

        def create
            @member = Member.find(params[:member_id])
            @content = @member.contents.new(content_params)

            if @content.save
                redirect_to @member
            else
                render :new
            end
        end

        # def edit
        #     @member = Member.find(params[:member_id])
        #     @content = @content.find(params[:content_id])
        #     respond_with @member, @content
        # end

        # def update
        #     @member = Member.find(params[:member_id])
        #     @content = @content.find(params[:content_id])

        #     if @content.update(content_params)
        #         redirect_to @member
        #     else
        #         render :edit
        #     end
        # end


        private

        def content_params
            params.require(:content).permit(:description, :url, :type)
        end
    end
end
