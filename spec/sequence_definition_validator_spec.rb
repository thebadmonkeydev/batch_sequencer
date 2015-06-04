require 'spec_helper'

module BatchSequencer
  describe SequenceDefinitionValidator do
    context '#validate' do
      it 'throws an error when the definition it not a hash' do
        expect{SequenceDefinitionValidator[[]].validate}.to raise_error 'sequence definition is not a hash'
      end
    end
  end
end
