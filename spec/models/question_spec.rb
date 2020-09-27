require 'rails_helper'

RSpec.describe Question, type: :model do
  let( :survey ) { FactoryGirl.create(:survey) }
  let( :question ) { FactoryGirl.create(:question) }
  let( :question_answer ) { FactoryGirl.create( :question_answer )}
  let( :question_option ) { FactoryGirl.create(  :question_option )}
  
  it 'is valid' do
    expect(question).to be_valid
  end

  it 'is not valid' do
    question.question = nil
    expect(question).to_not be_valid
  end
end
