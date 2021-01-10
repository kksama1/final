# frozen_string_literal: true

# top-level class documentation comment
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    redirect_to page_show_master_path if @user.role != 'master'

    @comment = Comment.new
    @comments = @user.comments.order('created_at DESC')

    # def belongs_user
    #   @belongs_to_user = request.url.split('/').last.to_i
    # end
  end
end
