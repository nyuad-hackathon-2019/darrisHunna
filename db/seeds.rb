# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

survey = Survey.create(title: 'Twilio Developer Education')

survey.questions.create(
  [
    {
      body: 'Are you interested in being a host?',
      type: Question.types[:yes_no],
      audio_file: 'https://s3-ap-northeast-1.amazonaws.com/poodll-audioprocessing-out/CP/30/localhostuser/recordmp3online.com/poodll/poodllfile5cc4abde4a8281.mp3'
    },
    {
      body: 'What is your full name ?',
      type: Question.types[:free],
      audio_file: 'https://s3-ap-northeast-1.amazonaws.com/poodll-audioprocessing-out/CP/30/localhostuser/recordmp3online.com/poodll/poodllfile5cc4ac15d81021.mp3'
    },
    {
      body: 'Which city you live in?',
      type: Question.types[:free],
      audio_file: 'https://s3-ap-northeast-1.amazonaws.com/poodll-audioprocessing-out/CP/30/localhostuser/recordmp3online.com/poodll/poodllfile5cc4ac3402e3e1.mp3'
    },
    {
      body: 'Which District do you live in?',
      type: Question.types[:free],
      audio_file: 'https://s3-ap-northeast-1.amazonaws.com/poodll-audioprocessing-out/CP/30/localhostuser/recordmp3online.com/poodll/poodllfile5cc4ac52cc33e1.mp3'
    },
    {
      body: 'upto how many students can you host?',
      type: Question.types[:numeric],
      audio_file: 'https://s3-ap-northeast-1.amazonaws.com/poodll-audioprocessing-out/CP/30/localhostuser/recordmp3online.com/poodll/poodllfile5cc4ac7f4d8331.mp3'
    }
  ]
)
