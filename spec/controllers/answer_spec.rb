require "rails_helper"

RSpec.describe QuestionAnswersController, :type => :controller do
  let(:question_answer) { FactoryGirl.create(:question_answer) }

  describe 'GET index' do
    before(:each) do
      question_answer   
      get :index
    end

    it 'has a 200 status code' do  
      expect(response.status).to eq(200)
    end

    it 'question answer in the page' do
      expect(QuestionAnswer.count).to eq 1
    end
  end

  describe 'GET show' do
    before(:each) do
      question_answer
      get :show, params: { id: question_answer.id }
    end

    it 'has a 200 status code' do  
      expect(response.status).to eq(200)
    end

    it 'question answer in the page' do
      expect(QuestionAnswer.count).to eq 1
    end
  end
end