require 'spec_helper'

describe BatchSequencer::SequenceDefinitionValidator do
  context '#validate' do
    it 'throws an error when the definition it not a hash' do
      expect{BatchSequencer::SequenceDefinitionValidator.validate []}.to raise_error 'sequence definition is not a hash'
    end
  end
end
