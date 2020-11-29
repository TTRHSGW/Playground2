require_relative "../lib/gate"
require_relative "../lib/ticket"

describe Gate do
  describe 'Gate new' do
    it 'can new Gate instance' do
      umeda_gate = Gate.new(:umeda)
      expect(umeda_gate).to be_an_instance_of(Gate)
    end
  end
end
