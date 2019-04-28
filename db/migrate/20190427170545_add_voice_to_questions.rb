class AddVoiceToQuestions < ActiveRecord::Migration
  def change
    add_column :questions,:audio_file,:text , default: "https://s3-ap-northeast-1.amazonaws.com/poodll-audioprocessing-out/CP/30/localhostuser/recordmp3online.com/poodll/poodllfile5cc48b263f80d1.mp3"
  end
end
