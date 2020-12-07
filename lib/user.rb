require_relative "../lib/loggable_module.rb"

module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  include Loggable
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end

  def call_me
    puts "change from working copy"
    "Taro"
  end

  def name
    log('name is called')
    'Alice'
  end
end

user = User.new('Alice')
user.shuffled_name
