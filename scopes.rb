def foo
  local = 'this variable is local'
end

class User
  # this variable is class scope (variavel de classe)
  # pode ser usado em todas suas instâncias
  @@user_count = 0
  def add(name)
    puts "Adding #{name} to the user list"
    @@user_count += 1
    puts @@user_count
  end
end

first_user = User.new
first_user.add('John')

second_user = User.new
second_user.add('Jane')

class User2
  def add(name)
    # variavel de instância (ou atributo), pode ser usado só na mesma instância
    @name = name
    puts "Adding #{name} to the user list"
    hello
  end

  def hello
    puts "Hello #{@name}"
  end
end

user = User2.new
user.add('John')


class Dog
  attr_accessor :name, :breed
  # same that
  #   def name
  #     @name
  #   end

  #   def name= name
  #     @name = name
  #   end
end

dog = Dog.new
dog.name = 'Fido'
puts dog.name


class Person
  attr_accessor :name, :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end

  def check
    puts "Name: #{@name}, Age: #{@age}"
  end
end

person = Person.new('John', '35')
person.check
puts person.age, person.name = 'joão'