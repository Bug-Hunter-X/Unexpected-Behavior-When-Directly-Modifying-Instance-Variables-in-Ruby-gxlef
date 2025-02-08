```ruby
class MyClass
  attr_reader :value # Use attr_reader for getter

  def initialize(value)
    @value = value
  end

  def value=(new_value) # Define a setter if you need validation or side effects
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

# my_object.instance_variable_set(:@value, 20) # Avoid direct modification
my_object.value = 20 # Use the setter method
puts my_object.value #=> 20
```