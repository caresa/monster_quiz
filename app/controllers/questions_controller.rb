class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def index
    #access to all the questions for a given quiz
    @questions = Quiz.find(params[:quiz_id]).questions.includes(:options).all
    # questionList = []

    # @questions.each do |q|
    #   questionList.push(q.question_id)
    # end

    # @questions = Question.where(id:questionList)

    # render json: @questions
  end

  def show
    quiz = Quiz.find(params[:quiz_id])
    @quiz_question = quiz.questions.find(params[:id])

    questions_array = quiz.questions.to_ary
    question_index  = questions_array.index(@quiz_question)
    @next_question  = questions_array[question_index + 1]
    # render json: @quiz_question
  end

  def save_answer
    if @next_question != nil
      # redirect_to
    else
      # redirect_to results page
    end
  end

  def check_meta
  end
end
