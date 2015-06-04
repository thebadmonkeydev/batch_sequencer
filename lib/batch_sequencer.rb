require "batch_sequencer/version"

module BatchSequencer
  def self.run(batch_def, *args)
    raise SequenceDefinitionError unless batch_def.is_a? Hash
  end

  class SequenceDefinitionError < ArgumentError
    def self.message
      'invalid batch definition'
    end
  end
end

