class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.role != "master"
      redirect_to page_show_master_path
    end

    @comment = Comment.new
    @comments = @user.comments.order("created_at DESC")

    def belongs_user
#      @curr_page = @curr_page.request_uri
#      p @curr_page
     @belongs_to_user = request.url.split('/').last.to_i
    end


    #@comment = Comment.new
  #  @comments = @master.comments
  end 
end
