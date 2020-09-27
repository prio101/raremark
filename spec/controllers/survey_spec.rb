require "rails_helper"

RSpec.describe SurveysController, :type => :controller do
  let(:survey) { FactoryGirl.create(:survey) }

  describe 'GET index' do
    before(:each) do
      survey   
      get :index
    end

    it 'has a 200 status code' do  
      expect(response.status).to eq(200)
    end

    it 'survey in the page' do
      
      expect(Survey.count).to eq 1
    end
  end

  describe 'GET show' do
    before(:each) do
      survey
      get :show, params: { id: survey.id }
    end

    it 'has a 200 status code' do  
      expect(response.status).to eq(200)
    end

    it 'survey in the page' do
      expect(Survey.count).to eq 1
    end
  end
end