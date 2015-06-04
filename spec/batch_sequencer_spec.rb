require 'spec_helper'

describe BatchSequencer do
  let(:good_def) do
    {
      id: 1234,
      class: 'Account',
      jobs: []
    }
  end

  it 'has a version number' do
    expect(BatchSequencer::VERSION).not_to be nil
  end

  context 'gem API methods' do
    it 'has a run method' do
      expect(BatchSequencer).to respond_to :run
    end

    describe '#run' do
      it 'ensures validation of sequence definition' do
        expect(BatchSequencer::SequenceDefinitionValidator).to receive(:validate).with good_def
        BatchSequencer.run(good_def)
      end

      it 'can accept any number of parameters after the sequence definition' do
        expect{BatchSequencer.run(good_def, 1)}.to_not raise_error
      end
    end
  end
end
