require 'spec_helper'

module BatchSequencer
  describe SequenceRunner do
    context '#run' do
      it ' method exists' do
        expect(SequenceRunner.new({ id: 123, class: 'BatchSequencer', jobs: []})).to respond_to :run
      end
    end
  end
end
