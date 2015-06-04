require 'batch_sequencer/version'
require 'batch_sequencer/railtie' if defined?(Rails)
require 'sidekiq'
require 'pry'

module BatchSequencer
  def self.run(sequence_def, *args)
    validate_sequence_def(sequence_def)
  end

  def self.validate_sequence_def(sequence_def)
    raise SequenceDefinitionError['sequence definition is not a hash'] unless sequence_def.is_a? Hash
    sequence_def.symbolize_keys

    raise SequenceDefinitionError['sequence definition must contain an ActiveRecord id'] unless sequence_def.keys.include?(:id)
    raise SequenceDefinitionError['sequence definition must contain an ActiveRecord class'] unless sequence_def.keys.include?(:class)
    raise SequenceDefinitionError['sequence definition must contain a job list'] unless sequence_def.keys.include?(:jobs)
  end

  class SequenceDefinitionError < ArgumentError
    def self.[](message)
      self.new(message)
    end
  end
end

