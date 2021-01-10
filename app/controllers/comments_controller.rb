# frozen_string_literal: true

# top-level class documentation comment
class CommentsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!

  def create
    @comment = @user_s.comments.new(comment_params)
    @comment.user = User.find_by(id: params[:user_id])
    # p "||||@comment||||#{@comment.user.id}"
    @comment.leaved_user_id = current_user.id
    @comment.belongs_user_id = params[:user_id]
    @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end

  def set_user
    @user_s = User.find(params[:user_id])
    # p "||||@user_s||||#{@user_s.id}"
  end
end
