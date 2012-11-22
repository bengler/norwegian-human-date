# encoding: utf-8
require "timecop"
describe NorwegianHumanDate do
  describe ".relative" do

    Timecop.freeze(Time.at(1353578081)) do
      it 'translates Time.now into "i dag"' do
        NorwegianHumanDate.relative(Time.now).should eq "i dag"
      end

      it 'translates Time.now-1.day into "i går"' do
        NorwegianHumanDate.relative(Time.now-1.day).should eq "i går"
      end

      it 'translates Time.now+1.day into "i morgen"' do
        NorwegianHumanDate.relative(Time.now+1.day).should eq "i morgen"
      end

      it 'translates Time.now+2.days into "lørdag"' do
        NorwegianHumanDate.relative(Time.now+2.days).should eq "lørdag"
      end

      it 'translates Time.now-2.days into "sist tirsdag"' do
        NorwegianHumanDate.relative(Time.now-2.days).should eq "sist tirsdag"
      end

      it 'translates Time.now-1.week into "torsdag 15. november"' do
        NorwegianHumanDate.relative(Time.now-1.week).should eq "torsdag 15. november"
      end

    end

  end
end
