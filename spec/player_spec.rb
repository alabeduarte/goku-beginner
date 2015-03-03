require 'spec_helper'

describe Player do

  context 'You see before yourself a long hallway with stairs at the end. There is nothing in the way.' do
    it 'walks forward' do
      warrior = double(:walk!)

      expect(warrior).to receive(:walk!)

      subject.play_turn warrior
    end
  end

  context 'It is too dark to see anything, but you smell sludge nearby.' do
    it 'feels the environment before walk' do
      warrior = double(:walk!)

      expect(warrior).to receive(:feel)

      subject.play_turn warrior
    end
  end
end