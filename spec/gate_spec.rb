require_relative "../lib/gate"
describe Gate do
  describe 'new Gate' do
    it 'can new Gate instance' do
      gate = Gate.new
      expect(gate).to be_an_instance_of(Gate)
    end
  end
end