require_relative "../lib/loggable_module.rb"

class Product
  include Loggable

  def title
    log('title is called')
    'A great movie'
  end
end

product = Product.new
product.title
