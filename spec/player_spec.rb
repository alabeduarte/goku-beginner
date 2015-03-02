require 'spec_helper'

describe Player do

  context 'You see before yourself a long hallway with stairs at the end. There is nothing in the way.' do
    it 'walks forward' do
      warrior = double(:walk!)

      expect(warrior).to receive(:walk!)

      subject.play_turn warrior
    end
  end
end