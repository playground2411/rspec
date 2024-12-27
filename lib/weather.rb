class Weather
  def initialize(params=nil)
    @status = params
  end
  def emote_by_weather
    case @status
    when "rain" then
      emotion = "ワクワク"
    when "snow" then
      emotion = "ワクワクすっぞ！！"
    else
      emotion = nil
    end
    "今日は晴れです！#{emotion}"
  end
end