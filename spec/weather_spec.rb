require_relative '../lib/weather'

RSpec.describe Weather do
  describe "todays_weather" do
    it '今日の天気を返してくれる' do
      expect(Weather.new().todays_weather).to eq "今日は晴れです！"
    end
    context "引数がある場合" do
      context '引数が雨の場合' do
        it "嬉しがってくれる" do
          expect(
            Weather.new("rain").todays_weather
          ).to eq "今日は晴れです！ワクワク"
        end
      end
    end
  end
end