class MembersController < ApplicationController
  def index
    @members = MemberService.sort_by_most_activities_count()
  end

  def show
    @member = Member.find(params[:id])
  end
end
