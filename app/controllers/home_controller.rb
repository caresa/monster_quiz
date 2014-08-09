class HomeController < ApplicationController
  def index
    @quiz = Quiz.all
  end
end
