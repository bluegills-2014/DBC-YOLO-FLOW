class VotesController < ApplicationController

  def create
    vote = Vote.new(vote_params)
    vote.user_id = session[:user_id]
    voteable= vote.voteable_type == "Answer" ? Answer.find(vote.voteable_id) : Question.find(vote.voteable_id)
    if vote.save
      {:vote_count => voteable.vote_sum}.to_json
    else
      {:vote_count => "Didn't go through"}.to_json
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:voteable_id, :user_id, :vote_direction)
  end

end
