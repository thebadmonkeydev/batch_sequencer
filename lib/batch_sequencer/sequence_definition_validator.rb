require 'batch_sequencer/sequence_definition_error'

module BatchSequencer
  class SequenceDefinitionValidator
    def self.validate(sequence_def)
      raise SequenceDefinitionError['sequence definition is not a hash'] unless sequence_def.is_a? Hash
      sequence_def.symbolize_keys

      raise SequenceDefinitionError['sequence definition must contain an ActiveRecord id'] unless sequence_def.keys.include?(:id)
      raise SequenceDefinitionError['sequence definition must contain an ActiveRecord class'] unless sequence_def.keys.include?(:class)
      raise SequenceDefinitionError['sequence definition must contain a job list'] unless sequence_def.keys.include?(:jobs)
    end
  end
end