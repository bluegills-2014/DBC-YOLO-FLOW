class AnswersController < ApplicationController
 # before_action :set_question, only: :create

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:id])
    @answer.question = @question
    @user = User.find(session[:user_id])
    @answer.user = @user
    @answer.save

    redirect_to @question
  end


  private

  def answer_params
    params.require(:answer).permit(:body)
  end
end
