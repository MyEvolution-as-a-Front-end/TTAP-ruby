# print
puts 'Hello world'
p 'Hello world'
print 'Hello world'

# basic operations
number_one = 10
number_two = 20

puts number_one + number_two

# array
array = [1, 2, 3, 4, 5]
puts array

# Symbols (are objects unique)
# Symbols are immutable, reusable constants 
# represented internally by an integer value. 
# They're often used instead of strings to 
# efficiently convey specific, meaningful values

status = :pending
puts status == :pending # true

# With string
new_status = 'pending'
puts new_status == 'pending' # true

# hash 
# is a special type of object mutable
an_hash = {
  # keys are a symbol
  one: 1,
  two: 2,
  three: 3
}
# .class is equal typeof of javascript
an_hash[:four] = 10
puts an_hash.class

# input
puts "Enter a number: "
# number = gets.chomp
# puts "You entered: #{number}"

# operators
# puts 10 + 20
# puts 10 - 20
# puts 10 * 20
# puts 10 / 20
# puts 10 % 20
# puts 10 ** 2

# to_i method converts string to integer
puts "12391SR".to_i

# conditions
anything = 3

if anything == 1
  puts "is true"
elsif anything == 0
  puts "is false"
else
  puts "is different"
end

# verify if is false, as opposed to "if"
# same that if not
# if not anything == 0
unless anything == 0
  puts "is true"
end


# case: same that switch
month = 7

case month
when 1..3
  puts "January, February and March"
when 4..6
  puts "April, May and June"
when 7..9
  puts "July, August and September"
when 10..12
  puts "October, November and December"
else
  puts "Invalid month"
end

# interactions
# for, while, times, do/while
# for
for i in 1..10
  puts i
end

# do/while
something = "not done"
loop do 
  puts "Doing something"
  something = "done"
  break if something == "done"
end
# while
something = "done"
while not something == "done"
  puts "Doing something"
end

# times
10.times do
  puts "Doing something"
end


# Collections
# Array
array = []
array.push(1)
array.push(2)
array.at(0) # 1
array.length # 2
# array.size same that array.length
array.insert(0, 3)
array.empty? # false
# Hash
hash = {
  one: 1,
  two: 2,
  three: 3
}
hash[:one] # 1
hash[:two] # 2
hash[:four] = 4
hash.has_key?(:four) # true
# hash.each { |key, value| puts "Key: #{key}, Value: #{value}" }
hash.each do |key, value| puts "Key: #{key}, Value: #{value}" end
max = hash.max
print max
# methods
def fizzbuzz
  (1..100).each do |number|
    puts "FizzBuzz" if number % 15 == 0
    puts "Fizz" if number % 3 == 0
    puts "Buzz" if number % 5 == 0
    puts number
  end
end

def fizzbuzz2(n)
  return "FizzBuzz" if n % 15 == 0
  return "Fizz" if n % 3 == 0
  return "Buzz" if n % 5 == 0
  n.to_s
end

fizzbuzz2 10 # same fizzbuzz2(10)

# Gems
# gems are a way to add functionality to ruby
# as a library of javascript

require "os"

def my_os
  return "Linux" if OS.linux?
  return "Mac" if OS.mac?
  "Windows" if OS.windows?
end

puts my_os

def cpf_valid(cpf)
  cpf_array = cpf.split("").map(&:to_i)
  check_digit = (cpf_array[0..9].reduce(:+) * 10) % 11
  check_digit == cpf_array[10]
end

