# [Ruby From Other Languages](https://www.ruby-lang.org/en/documentation/ruby-from-other-languages/)

**1. Iteration**
```
items.each do |item|
  # Deal with item inside this block
end
```

**2. Everything has a value** even nil
```
x = '0'
if x === 'a'
  true
elsif x === 'b'
  false
end
# => nil
```

**3. Symbols are not lightweight Strings**. Strings are allocated a different reference everytime it is created. Symbold is for the identity and String is for the content.
```
:george.object_id == :george.object_id
=> true

"george".object_id == "george".objet_id
=> false
```

**4. Everything is an object**

**5. Variable constants** are not explicitly constants.

**6. Naming conventions**
* Constants are capitalized
* Global variables start with a dollar-sign $
* Instance varaibles start with a @
* Class variables start with a @@

**7. Keyword arguments** or named parameters.
```
def transport(cargo: "cargo", via: "carriage")
  "Send these #{cargo} via #{via}."
end

transport
# => "Send these cargo via carriage."

transport(via: "railway", cargo: "oil barrels")
# => "Send these oil barrels via railway."
```

**8. The universal truth**. All are true except *nil* and *false*.
```
if 0
  puts "0 is true"
else
  puts "0 is false"
end
```

**9. Access methods apply until the end of scope**

**10. Method access**. Ruby is different for two of its access modifiers
* private
  * Only accessible when they can be called without an explicit receiver
  * Only *self* is allowed to be the receiver of a private method call
* protected
  * Can be called from
    * a class
    * descendant class instances
    * another instances as its receiver
```
class Test
  def identifier
    99
  end

  def ==(other)
    identifier == other.identifier
  end
end

t1 = Test.new
t2 = Test.new 
t1 == t2       
# => true

class Test
  protected :identifier
end

t1 == t2  
# => true

class Test
  private :identifier
end

t1 == t2
# => # NoMethodError: private method `identifier' called for
```

**11. Classes are open** for modification at any time (even core classes like Integer or object)
```
class Integer
  def hours
    self * 3600
  end
  alias hour hours
end

Time.mktime(2000, 01, 01) + 12.hours
# => Sat Jan 01 12:00:00
```

**12. Funny method names** can end with question marks or exclamation marks.
* Question marks (?) are methods that answer questions
* Exclamation marks (!) are methods that are potentially "dangerous"

**13. Singleton methods** are per-object methods and only available on the Object it is defined onn.
```
class Car
  def inspect
    "Cheap car"
  end
end

porsche = Car.new
porsche.inspect
# => Cheap car

def porsche.inspect
  "Expensive car"
end

porsche.inspect
# => Expensive car

# Other objects are not affected
other_car = Car.new
other_car.inspect
# => Cheap car
```

**14. Missing methods** calls the *method_missing* method and by default raises a NameError exception and can be redefined.
```
def method_missing(id, *arguments)
  puts "Method #{id} was called but not found. It has these arguments: #{arguments.join(", ")}."
end

__ :a, :b, 10
# => Method __ was called, but not found it has these arguments: a, b, 10.
```

**15. Message passing, not function calls**
```
# This ...
1 + 2 
# ... is the same as this ...
1.+(2)
# ... and same as this.
1.send "+", 2
```

**16. Blocks are Objects, they just don't know it yet**

**17. Operators are syntactic sugar**
```
class Integer
  def +(other)
    self - other
  end
end

1 + 1
# => 0

100 + 200
# => -100
```