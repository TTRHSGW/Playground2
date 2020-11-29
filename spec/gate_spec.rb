require_relative "../lib/gate"
require_relative "../lib/ticket"

describe Gate do
  describe 'Gate new' do
    it 'can new Gate instance' do
      umeda_gate = Gate.new(:umeda)
      expect(umeda_gate).to be_an_instance_of(Gate)
    end
  end

  describe '#enter' do
    it "enter the ticket to gate and stamp_at is enter station's name" do
      umeda_gate = Gate.new(:umeda)
      ticket = Ticket.new(150)
      umeda_gate.enter(ticket)
      expect(ticket.stamp_at).to eq :umeda
    end
  end
end