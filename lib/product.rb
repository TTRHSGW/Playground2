require_relative "../lib/loggable_module.rb"

module A
  def to_s
    "<A> #{super}"
  end
end

module NameDecorator
  def name
    "<<#{super}>>"
  end
end

class Product
  include Loggable
  prepend A
  prepend NameDecorator

  def to_s
    "<Product>  #{super}"
  end

  def title
    log('title is called')
    'A great movie'
  end

  def name
    "A great film"
  end
end

product = Product.new
product.title

