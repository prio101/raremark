Question.all.each do |question|  
  QuestionOption.find_or_create_by(
    option: [Faker::Lorem.sentence, 'Write Your Answer On Input'].sample,
    question_id: question.id
  )  
end