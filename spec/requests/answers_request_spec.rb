require 'rails_helper'

RSpec.describe "Answers", type: :request do
  describe "GET index" do
    
    let!(:survey) { FactoryGirl.create( :survey ) }
    
    it 'returns successful response' do
      get surveys_path
      expect(response).to be_successful
    end

    it 'assigns answers' do
      get surveys_path
      expect(assigns(:survey)).to eq([survey]) 
    end

    it 'renders the index template' do
      get surveys_path
      expect(response).to render_template("index")
    end
  end
end
