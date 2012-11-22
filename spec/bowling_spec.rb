require './bowling'

describe Bowling do
  let(:game) { Bowling.new }
  describe "#score" do
    subject { game.score(*pins) }
    context "When rolling 9 0s" do
      let(:pins) { [0]*9 }
      it { should eql 0 }
    end

    context "When rolling 9 1s" do
      let(:pins) { [1]*9 }
      it { should eql 9 }
    end

    context "When rolling a spare in the first frame" do
      let(:pins) { [3,7,4] }
      it { should eql 18 }
    end

    context "When rolling three spares" do
      let(:pins) { [5]*7 }
      it { should eql 50 }
    end

    context "When rolling strike" do
      let(:pins) { [10,1,1] }
      it { should eql 14 }
    end

    context "When rolling strikes and spares" do
      let(:pins) { [10,5,5,5] }
      it { should eql 40 }
    end
  end
end
