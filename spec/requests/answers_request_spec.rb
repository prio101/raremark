require 'rails_helper'

RSpec.describe "Answers", type: :request do
  describe "GET index" do
    let!(:survey) { FactoryGirl.create( :survey, name: 'Mission' ) }
   

    context 'index template' do
      
      it 'returns successful response' do
        get '/index'
        expect(response).to have_http_status(:success)
      end
  
      it 'assigns answers' do
        get '/index'
        expect(assigns(:survey)).to eq survey
      end
  
      it 'renders the index template' do
        survey
        get question_answers_path
        expect(response).to render_template('index')
      end  
    end
    
    context 'show page' do

      it 'render answer to the show template' do
        survey
        get question_answer_path(survey)
        expect(response).to  have_http_status 200
      end
  
      it 'render answer to the show template' do
        survey
        get question_answer_path(survey)
        expect(response.body).to include('Mission') 
      end
  
      it 'renders the show template' do
        survey
        get question_answer_path(survey.id)
        expect(response).to render_template('show')
      end
    end
  end
end
