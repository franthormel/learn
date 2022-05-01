### PART 1
# Expression evaluation
# =>
"Hello World!"

# Print function (parentheses are optional)
# => "Hello World"
puts "Hello World"

# Addition
# => 5
3 + 2

# Multiplication
# => 6
3 * 2

# Square of a number. Read it as 3 'to the power of' 2.
# => 9
3 ** 2

# Square root. Most numbers when square rooted are not
# whole numbers therefore the output is a decimal value.
# => 3.0
Math.sqrt(9)

# Assigning results to a variable.
# => 9
a = 3 ** 2

# => 16
b = 4 ** 2

# => 5.0
Math.sqrt(a + b)

### PART 2
# Method definition
# => :hi
def hi
    puts "Hello World!"
end

# Call the method 'hi' without parentheses
# => "Hello World!"
hi

# Call the method 'hi' with parentheses
# => "Hello World!"
hi()

# Refefine 'hi' to take a name as a parameter
# => :hi
def hi(name)
    puts "Hello #{name}!"
end

# Say hi to 'Matz'
# => "Hello Matz!"
hi("Matz")

# Default parameter and capitalize the name parameter if provided.
def hi(name = "World")
    puts "Hello #{name.capitalize}!"
end

# => "Hello Chris!"
hi "chris"

# => "Hello World!"
hi

# Class definition
class Greeter
    def initialize(name = "World")
        @name = name
    end

    def say_hi
        puts "Hi #{@name}!"
    end

    def say_bye
        puts "Bye #{@name}, come back soon."
    end
end

# Create a Greeter object for 'Pat'
greeter = Greeter.new("Pat")

# Say hi to 'Pat'
# => Hi Pat!
greeter.say_hi

# Bid your farewell to 'Pat'
# => Bye Pat, come back soon.
greeter.say_bye

# This will throw an error since Ruby uses the good
# object-oriented approach of keeping data sort-of hidden away.
# => syntax error, unexpected instance variable greeter.@name
# greeter.@name

# What methods do exist for Greeter objects?
# => [:say_hi, :say_bye, :instance_of?, :public_send,
#     :instance_variable_get, :instance_variable_set,
#     :instance_variable_defined?, :remove_instance_variable,
#     :private_methods, :kind_of?, :instance_variables, :tap,
#     :is_a?, :extend, :define_singleton_method, :to_enum,
#     :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?,
#     :freeze, :inspect, :display, :send, :object_id, :to_s,
#     :method, :public_method, :singleton_method, :nil?, :hash,
#     :class, :singleton_class, :clone, :dup, :itself, :taint,
#     :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods,
#     :protected_methods, :frozen?, :public_methods, :singleton_methods,
#     :!, :==, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
# puts Greeter.instance_methods

# If we want to just list methods defined for Greeter we can tell it
# to not include ancestors by passing the parameter false, meaning
# we don't want methods defined by ancestors
# => [:say_hi, :say_bye]
# puts Greeter.instance_methods(false)

# Which methods our Greeter object responds to.
# Is the name instance variable available?
# => false
# puts greeter.respond_to?("name")

# Is the say_hi method available?
# => true
# puts greeter.respond_to?("say_hi")

# Is the 'to a string' method available?
# => true
# puts greeter.respond_to?("to_s")

# Ruby provides an easy way of providing access to an object's
# variables andlet's us reopen a class and modify it. 
class Greeter
    attr_accessor :name
end

# Create a Greeter object for 'Andy'
# => @name = "Andy"
greeter = Greeter.new("Andy")

# Is the 'name' instance variable available?
# => true
puts greeter.respond_to?("name")

# Is the 'name' instance variable setter available?
# => true
puts greeter.respond_to?("name=")

# Say hi to 'Andy'
# => "Hi Andy!"
greeter.say_hi

# Change the Greeter object's name from 'Andy' to 'Betty'
# => @name = "Betty"
greeter.name = "Betty"

# Check if the name is now set to 'Betty'
# => "Betty"
puts greeter.name

# Say hi to 'Betty'
# => "Hi Betty!"
greeter.say_hi