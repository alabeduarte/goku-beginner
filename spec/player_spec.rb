require 'spec_helper'

describe Player do

  context 'You see before yourself a long hallway with stairs at the end. There is nothing in the way.' do
    let(:nothing) { [] }

    it 'walks forward' do
      warrior = double(walk!: {}, feel: nothing)

      expect(warrior).to receive(:walk!)

      subject.play_turn warrior
    end

    context 'It is too dark to see anything, but you smell sludge nearby.' do
      it 'feels the environment before walk' do
        warrior = double(walk!: {}, feel: nothing)

        expect(warrior).to receive(:feel)

        subject.play_turn warrior
      end

      it 'attacks when there is anything ahead' do
        something = ['s']
        warrior = double(walk!: {}, feel: something)

        expect(warrior).to receive(:attack!)

        subject.play_turn warrior
      end
    end
  end

end