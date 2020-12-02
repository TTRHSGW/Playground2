require_relative '../lib/deep_freezable_module'
require_relative '../lib/bank'
require_relative '../lib/team'

RSpec.describe DeepFreezable do
  describe '#deep_freeze' do
    it 'array equal' do
      expect(Team::COUNTRIES).to eq ['Japan', 'US', 'India']
      expect(Team::COUNTRIES.frozen?).to be true
      expect(Team::COUNTRIES.all? { |country| country.frozen? }).to be true
    end

    it 'hash equal' do
      expect(Bank::CURRENCIES).to eq ({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
      expect(Bank::CURRENCIES.frozen?).to be true
      expect(Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }).to be true
    end
  end
end
