require_relative '../lib/weather'

RSpec.describe Weather do
  describe "emote_by_weather" do
    it '今日の天気を返してくれる' do
      expect(Weather.new().emote_by_weather).to eq "今日は晴れです！"
    end
    context "引数がある場合" do
      context '引数が雨の場合' do
        it "嬉しがってくれる", :focus do
          expect(
            Weather.new("rain").emote_by_weather
          ).to eq "今日は晴れです！ワクワク"
        end
      end
      context '引数が雪の場合' do
        it "悟空になる" do
          expect(
            Weather.new("snow").emote_by_weather
          ).to eq "今日は晴れです！ワクワクすっぞ！！"
        end
      end
    end
  end
end