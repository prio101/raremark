class SurveysController < ApplicationController
  before_action :set_survey, only: [ :show ]
  def index
    @surveys = Survey.all
  end

  def show
  end

  private

  def set_survey
    unless params[:id].blank?
      @survey = Survey.find(params[:id])
    end
  end
end
