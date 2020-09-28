require 'rails_helper'

RSpec.describe Survey, type: :model do
  let( :survey ) { FactoryGirl.create(:survey) }
  let( :question ) { FactoryGirl.create(:question) }
  let( :question_answer ) { FactoryGirl.create( :question_answer )}
  let( :question_option ) { FactoryGirl.create(  :question_option )}
  let( :question_type ) { FactoryGirl.create( :question_type ) }
  
  it 'is valid' do
    expect(survey).to be_valid
  end

  it 'is not valid without name' do
    survey.name = nil
    expect(survey).to_not be_valid
  end
end
