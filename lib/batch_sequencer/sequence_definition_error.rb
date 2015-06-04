module BatchSequencer
  class SequenceDefinitionError < ArgumentError
    def self.[](message)
      self.new(message)
    end
  end
end
