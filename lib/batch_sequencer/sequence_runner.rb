module BatchSequencer
  class SequenceRunner
    attr_accessor :definition, :args

    def self.[](definition, *args)
      self.new(definition, *args)
    end

    def initialize(definition, *args)
      self.definition, self.args = definition, args
    end

    def run
      puts "#{definition[:jobs]}"
    end
  end
end
