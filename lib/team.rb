require_relative './deep_freezable_module.rb'

class Team
  extend DeepFreezable
  COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end
