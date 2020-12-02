require_relative './deep_freezable_module.rb'

class Bank
  extend DeepFreezable
  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
end
