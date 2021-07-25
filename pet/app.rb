require_relative 'animal'
require_relative 'dog'

dog = Dog.new('Fido', 3)
dog.speak
dog.sleep
puts dog.name
puts dog.age