require 'rails_helper'

RSpec.describe QuestionType, type: :model do
  let( :survey ) { FactoryGirl.create(:survey) }
  let( :question ) { FactoryGirl.create(:question) }
  let( :question_answer ) { FactoryGirl.create( :question_answer )}
  let( :question_option ) { FactoryGirl.create(  :question_option )}
  let( :question_type ) { FactoryGirl.create( :question_type ) }
  
  it 'is valid' do
    expect(question_type).to be_valid
  end

  it 'is not valid without survey' do
    question_type.survey_id = nil
    expect(question_type).to_not be_valid
  end

  it 'is not valid without question' do
    question_type.question_id = nil
    expect(question_type).to_not be_valid
  end

  it 'is not valid without type' do
    question_type.question_type = nil
    expect(question_type).to_not be_valid
  end
end
