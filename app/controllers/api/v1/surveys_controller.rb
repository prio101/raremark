class Api::V1::SurveysController < ApiController
  def index
    surveys = Survey.all
    render json: surveys.to_json( include: [ :questions, :question_types, :question_answers ])
  end

  def show
    return if params[ :id ].blank?
    survey = Survey.find( params[ :id ] )
    render json:  survey.to_json( include: [ :questions, :question_types, :question_answers ] )
  end

  def create
    unless survey_params[ :answer ].blank?
      @answer = QuestionAnswer.new(survey_params)
      @answer.save
      render json: @answer.to_json, status: :created
    else
      render json: "Please select an answer", status: :not_created
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:answer, :survey_id, :question_id, :skipped)
  end
end
