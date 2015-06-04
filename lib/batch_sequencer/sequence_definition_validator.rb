require 'batch_sequencer/sequence_definition_error'

module BatchSequencer
  class SequenceDefinitionValidator
    attr_accessor :sequence_def

    def self.[](sequence_def)
      self.new(sequence_def)
    end

    def initialize(sequence_def)
      self.sequence_def  = sequence_def
    end

    def validate!
      validate_sequence_type
      sequence_def.symbolize_keys

      validate_sequence_keys
    end

    def validate_sequence_type
      raise SequenceDefinitionError['sequence definition is not a hash'] unless sequence_def.is_a? Hash
    end

    def validate_sequence_keys
      [:id, :class, :jobs].each do |key|
        validate key
      end
    end

    def validate(key)
      raise SequenceDefinitionError["sequence definition must contain a #{key} field"] unless sequence_def.keys.include?(key)
    end
  end
end
