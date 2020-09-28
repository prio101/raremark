require 'rails_helper'

RSpec.describe QuestionOption, type: :model do
  let( :survey ) { FactoryGirl.create(:survey) }
  let( :question ) { FactoryGirl.create(:question) }
  let( :question_answer ) { FactoryGirl.create( :question_answer )}
  let(  :question_option ) { FactoryGirl.create(  :question_option )}

  it 'is valid' do
    expect(question_option).to be_valid
  end

  it 'is not valid' do
    question_option.option = nil
    expect(question_option).to_not be_valid
  end
end
