class VotesController < ApplicationController

  def create
    p vote_params
    vote = Vote.new(vote_params)
    vote.user_id = session[:user_id]
    voteable= vote.voteable_type == "Answer" ? Answer.find(vote.voteable_id) : Question.find(vote.voteable_id)
    if vote.save
      render json: {:vote_count => voteable.vote_sum}
    else
      render json: {:vote_count => voteable.vote_sum}
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:voteable_id, :user_id, :voteable_type, :vote_direction)
  end

end
