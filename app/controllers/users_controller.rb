class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.role != "master"
      redirect_to page_show_master_path
    end

    #@comment = Comment.new
  #  @comments = @master.comments
  end
end
