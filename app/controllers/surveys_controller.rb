class SurveysController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @survey = Survey.includes(:questions).first
  end

  def voice
    survey = Survey.first
    render xml: welcome_message_for_voice(survey)
  end

  def sms
    user_response = params[:Body]
    from          = params[:From]
    render xml: SMS::ReplyProcessor.process(user_response, from, cookies)
  end

  private

  def welcome_message_for_voice(survey)
    response = Twilio::TwiML::VoiceResponse.new
    response.play(url: 'https://s3-ap-northeast-1.amazonaws.com/poodll-audioprocessing-out/CP/30/localhostuser/recordmp3online.com/poodll/poodllfile5cc4ab744eb831.mp3')
    response.redirect question_path(survey.first_question.id), method: 'GET'
    response.to_s
  end
end
