Question.all.each do |question|  
  QuestionType.find_or_create_by(
    question_type: Faker::Number.within(range: 1..3),
    survey_id: question.survey.id,
    question_id: question.id
  )  
end