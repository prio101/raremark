Question.all.each do |question|
  skipped = [true, false].sample
  QuestionAnswer.find_or_create_by(
    answer: ( Faker::Lorem.word unless skipped),
    question_id: question.id,
    survey_id: question.survey.id,
    skipped: skipped
  )  
end