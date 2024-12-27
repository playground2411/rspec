class Weather
  def initialize(params=nil)
    @status = params
  end
  def todays_weather
    "今日は晴れです！#{"ワクワク" if @status=="rain"}"
  end
end