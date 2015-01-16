class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @question = Question.find(params[:id])
    @comment.commentable_id = @question.id
    @comment.commentable_type = @question.class.to_s
    @user = User.find(session[:user_id])
    @comment.user = @user
    @comment.save

    redirect_to @question
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
