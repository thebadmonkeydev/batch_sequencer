require 'batch_sequencer/version'
require 'batch_sequencer/railtie' if defined?(Rails)
require 'sidekiq'
require 'pry'

require 'batch_sequencer/sequence_definition_validator'
require 'batch_sequencer/sequence_runner'

module BatchSequencer
  def self.run(sequence_def, *args)
    SequenceDefinitionValidator[sequence_def].validate!
    SequenceRunner[sequence_def, *args].run
  end
end

