# encoding: utf-8
describe NorwegianHumanDate do
  describe ".relative" do

    it 'translates Time.now into "i dag"' do
      NorwegianHumanDate.relative(Time.now).should eq "i dag"
    end

    it 'translates Time.now-1.day into "i går"' do
      NorwegianHumanDate.relative(Time.now-1.day).should eq "i går"
    end

    it 'translates Time.now+1.day into "i morgen"' do
      NorwegianHumanDate.relative(Time.now+1.day).should eq "i morgen"
    end

  end
end
