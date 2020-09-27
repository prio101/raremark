class QuestionAnswersController < ApplicationController
  before_action :set_answer,  only: [ :show ]

  def index
    @answers = QuestionAnswer.all.includes([:question, :survey])
  end

  def show
  end

  private

  def set_answer
    unless params[:id].blank
      @answer = QuestionAnswer.find(params[:id])
    end
  end
end
