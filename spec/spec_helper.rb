require "timecop"
RSpec.configure do |config|
  config.before(:each) do
    t = Time.local(2012, 10, 02, 0, 0, 0)
    Timecop.freeze(Time.at(1353578081))
  end
  config.after(:each) do
    Timecop.return
  end
end
