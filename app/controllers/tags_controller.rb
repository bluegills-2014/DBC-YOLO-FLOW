class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @questions = Question.all.select{|question| question.tags.include? @tag}
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end


end
