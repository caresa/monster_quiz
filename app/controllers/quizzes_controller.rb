class QuizzesController < ApplicationController
  before_action :authenticate_user!

  def index
    @quiz = Quiz.all
    render json: @quiz
  end

  def show
    #why isn't the reirect working
    @quiz = Quiz.all
    if @quiz
      render json: @quiz.find(params[:id])
    else
      redirect_to :root
    end
  end
end
