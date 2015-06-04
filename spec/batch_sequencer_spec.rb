require 'spec_helper'

describe BatchSequencer do
  it 'has a version number' do
    expect(BatchSequencer::VERSION).not_to be nil
  end

  it 'has a run method' do
    expect(BatchSequencer).to respond_to :run
  end

  context '#run' do
    it 'will only accept a hash as the first parameter' do
      expect{BatchSequencer.run([])}.to raise_error BatchSequencer::SequenceDefinitionError
    end

    it 'can accept any number of parameters after the sequence definition' do
      expect{BatchSequencer.run({}, 1)}.to_not raise_error
    end
  end

end
