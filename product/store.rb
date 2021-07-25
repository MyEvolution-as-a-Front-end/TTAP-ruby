class Store
  attr_accessor :products
  def initialize(product)
    @products = [{
      name: product.name,
      price: product.price,
    }]
  end

  def add_product(product)
    @products.push(product)
  end

  def remove_product(product)
    @products.delete(product)
  end

  def purchase(product_name)
    @products.each do |p|
      if p[:name] == product_name
        puts "Purchased #{p[:name]}: #{p[:price]}"
      end
    end
  end
end