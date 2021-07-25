class Computer
  def shut_down
    puts "Shutting down"
  end

  def boot_up
    puts "Booting up"
  end
end

computer = Computer.new

puts computer

computer.boot_up
computer.shut_down

class Animal
  def sleep
    puts "zzz"
  end
end

# class Dog inherits methods of Animal
class Dog < Animal
  def bark
    puts "woof"
  end
end

dog = Dog.new
dog.sleep
dog.bark

# Polimorfism
class Dog < Animal
  def sleep
    puts "zzzzzzzz"
    # call method sleep of Animal
    super
  end
end

dog = Dog.new
# use the method sleep defined in the class Dog
dog.sleep
