# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

survey = Survey.create(title: 'Twilio Developer Education')

survey.questions.create(
  [
    {
      body: 'Are you interested in being a host?',
      type: Question.types[:yes_no]
    },
    {
      body: 'What is your full name ?',
      type: Question.types[:free]
    },
    {
      body: 'Which city you live in?',
      type: Question.types[:free]
    },
    {
      body: 'Which District do you live in?',
      type: Question.types[:free]
    },
    {
      body: 'upto how many students can you host?',
      type: Question.types[:numeric]
    }
  ]
)
