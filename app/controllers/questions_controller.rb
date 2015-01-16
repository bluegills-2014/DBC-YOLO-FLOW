class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all
    @questions = @questions.sort{|a,b| b.vote_sum <=> a.vote_sum}

  end

  def show
    @user = @question.user
  end

  def edit
  end

  def new
  	@question = Question.new
  end

  def create
    @user = User.find(session[:user_id])
  	@question = Question.new(question_params)
    @question.user = @user

  	if @question.save
  		redirect_to @question
  	else
  		render 'new'
  	end
  end

  def tag_list

  end


  def update
  	if @question.update(question_params)
  		redirect_to @question
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@question.destroy

  	redirect_to questions_path
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

	def question_params
		params.require(:question).permit(:title, :body)
	end
end
