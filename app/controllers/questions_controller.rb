class QuestionsController < ApplicationController
  def index
    #access to all the questions for a given quiz
    @questions = Quiz.find(params[:quiz_id]).questions.includes(:options).all
    # questionList = []

    # @questions.each do |q|
    #   questionList.push(q.question_id)
    # end

    # @questions = Question.where(id:questionList)

    render json: @questions
  end

  def show
    @quiz_question = Quiz.find(params[:quiz_id]).questions.find(params[:id])
    render json: @quiz_question
  end

  def check_meta
  end
end
