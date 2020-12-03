require_relative './name_changer_module.rb'

class Person
  include NameChanger
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
