require 'rails_helper'

RSpec.describe "Api::V1::SurveysControllers", type: :request do
  let!(:survey) { FactoryGirl.create(:survey) }

  describe 'GET index' do
    before(:each) do
      get '/api/v1/surveys'
    end

    it 'returns the successful status' do
      expect(response).to have_http_status(200)
    end

    it 'returns the successful status' do
      survey
      expect(Survey.count).to eq 1
    end
  end
end
