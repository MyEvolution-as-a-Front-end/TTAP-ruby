require_relative 'store'
require_relative 'product'

product = Product.new
product.name = 'iPhone'
product.price = 699
store = Store.new(product)
store.purchase('iPhone')
store.add_product({name: 'MacBook', price: 1299})
puts store.products