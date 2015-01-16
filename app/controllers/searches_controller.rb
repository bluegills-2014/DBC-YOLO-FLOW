class SearchesController < ApplicationController
  def index
    query = params[:q]
    @search_results = Question.where("title like '%#{query}%'")
  end
end