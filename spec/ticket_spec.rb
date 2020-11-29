describe Ticket do
  describe 'Ticket new' do
    it 'can new Ticket instance' do
      ticket = Ticket.new(150)
      expect(ticket).to be_an_instance_of(Ticket)
    end
  end
end
