describe NorwegianHumanDate do
  describe ".relative" do
    it 'parses time' do
      NorwegianHumanDate.relative(Time.now).should eq "i dag"
    end
  end
end
