require_relative "../lib/gate"
require_relative "../lib/ticket"

RSpec.describe Gate do
  let(:umeda_gate) { Gate.new(:umeda) }
  let(:mikuni_gate) { Gate.new(:mikuni) }
  let(:ticket) { Ticket.new(150) }

  describe 'Gate new' do
    it 'can new Gate instance' do
      expect(umeda_gate).to be_an_instance_of(Gate)
    end
  end

  describe '#enter' do
    it "enter the ticket to gate and stamp_at is enter station's name" do
      umeda_gate.enter(ticket)
      expect(ticket.stamped_at).to eq :umeda
    end
  end

  describe '#exit' do
    it "return false exit when fare not enough" do
      umeda_gate.enter(ticket)
      expect(mikuni_gate.exit(ticket)).to be false
    end
  end
end
