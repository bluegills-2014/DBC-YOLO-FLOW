class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @questions = @tag.questions
  end

  def find
    query = params[:q]
    @tag_results = Tag.where("name like '%{query}'").map do |tag|
      { name: tag.name }
    end

    content_type :json
    @tag_results.to_json
  end

  def create

  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end


end
