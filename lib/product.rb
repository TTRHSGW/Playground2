require_relative "../lib/loggable_module.rb"

module A
  def to_s
    "<A> #{super}"
  end
end

class Product
  include Loggable
  prepend A

  def to_s
    "<Product>  #{super}"
  end
  def title
    log('title is called')
    'A great movie'
  end
end

product = Product.new
product.title

