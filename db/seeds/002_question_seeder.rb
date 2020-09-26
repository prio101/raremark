Survey.all.each do |survey|
  25.times do
    Question.find_or_create_by(
      question: Faker::Lorem.sentence,
      survey_id: survey.id
    )
  end
end
