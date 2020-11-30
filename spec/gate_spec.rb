require_relative "../lib/gate"
require_relative "../lib/ticket"

RSpec.describe Gate do
  let(:umeda_gate) { Gate.new(:umeda) }
  let(:juso_gate) { Gate.new(:juso) }
  let(:mikuni_gate) { Gate.new(:mikuni) }
  let(:ticket1) { Ticket.new(150) }
  let(:ticket2) { Ticket.new(190) }

  describe 'Gate new' do
    it 'can new Gate instance' do
      expect(umeda_gate).to be_an_instance_of(Gate)
    end
  end

  describe '#enter' do
    it "enter the ticket to gate and stamp_at is enter station's name" do
      umeda_gate.enter(ticket1)
      expect(ticket1.stamped_at).to eq :umeda
    end
  end

  describe '#exit' do
    it "return false exit when fare is not enough" do
      umeda_gate.enter(ticket1)
      expect(mikuni_gate.exit(ticket1)).to be false
    end

    it "return true exit when fare is enough" do
      umeda_gate.enter(ticket1)
      expect(juso_gate.exit(ticket1)).to be true
    end

    it "ticket2 is enough from umeda to mikuni" do
      umeda_gate.enter(ticket2)
      expect(mikuni_gate.exit(ticket2)).to be true
    end

    it "return false when enter ticket and exit ticket is different" do
      umeda_gate.enter(ticket1)
      expect(mikuni_gate.exit(ticket2)).to be false
    end
  end
end
