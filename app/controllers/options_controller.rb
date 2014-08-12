class OptionsController < ApplicationController
  def index
    @options = Option.where("question_id = ?", params[:question_id])
    render json: @options
  end

  def show
  end
end
