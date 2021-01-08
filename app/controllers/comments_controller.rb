class CommentsController < ApplicationController
#  before_action :set_user
#  before_action :authenticate_user!
#
#  def create
#    @comment = @master.comments.new(comment_params)
#    @comment.user = current_user
#    @comment.save
#  end
#
#  private
#
#  def comment_params
#    params.require(:comment).permit(:title, :body, :@master_id)
#  end
#
#  def set_user
#    @mast = User.find(params[:@master_id])
#  end
=begin
  before_action :find_master_id

  def create
    @comment = @belons.comments.create(params[:comment].permit(:content))
    @comment.leaved_user_id = current_user.id
    @comment.save

    if @comment.save
      redirect_to "http://localhost:3000/users/#{params[:belongs_user_id]}"
    end
  end

  private

  def find_master_id
    @belons = User.find(params[:belongs_user_id])
  end



=end


  
  before_action :set_user
  before_action :authenticate_user!

  def create
    #@comment = Comment.new
    @comment = @user_s.comments.new(comment_params)
    @comment.user = User.find_by(id: params[:user_id])
    p "||||@comment||||#{@comment.user.id}"
    @comment.leaved_user_id = current_user.id
    @comment.belongs_user_id = params[:user_id]
    @comment.save
#    if @comment.save
#    p "||||im saved||||"
#    end
    #redirect_back(fallback_location: root_path)
  end
  

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end

  def set_user
    @user_s = User.find(params[:user_id])
    p "||||@user_s||||#{@user_s.id}"
  end

end
