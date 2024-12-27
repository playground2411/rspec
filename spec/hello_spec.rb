require_relative '../lib/hello'

RSpec.describe Hello do
  it '挨拶してくれる' do
    expect(Hello.new().greet).to eq "Hello, Rspec!!"
  end
end