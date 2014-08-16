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

  def results
    options = params["options"].split(",")
    #options = ["3", "6", "9", "12", "15", "18", "21", "24", "27", "30"]
    @selectedQuiz = Quiz.find(params[:id])
    @quiz_meta = OptionsMeta.where(options_id:[options]).reorder(:score).reverse
    #results = { :test => "hi" }
    #render json: @quiz_meta
  end
end
