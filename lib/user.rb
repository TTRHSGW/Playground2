require_relative "../lib/loggable_module.rb"

class User
  include Loggable

  def name
    log('name is called')
    'Alice'
  end
end

user = User.new
user.name
