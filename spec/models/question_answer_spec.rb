require 'rails_helper'

RSpec.describe QuestionAnswer, type: :model do

  let( :survey ) { FactoryGirl.create(:survey) }
  let( :question ) { FactoryGirl.create(:question) }
  let( :question_answer ) { FactoryGirl.create( :question_answer, 
                                                      survey: survey, 
                                                      question: question,
                                                      skipped: false )}
  it 'is valid' do
    expect(question_answer).to be_valid
  end

  it 'is invalid' do
    question_answer.answer = nil
    expect(question_answer).to_not be_valid
  end
  
  it 'valid when answer is nil and skipped is true' do
    expect(question_answer).to be_valid
  end
end
