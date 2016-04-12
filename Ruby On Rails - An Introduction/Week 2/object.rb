class Person

  def initialize(name, age) # constructor
    @name = name
    @age = age
  end

  def get_info
    @addtional_info = "Intersting"
    "Name: #{@name}, age: #{@age}"
  end

end

person1 = Person.new("Joe", 14)

p person1.instance_variables # [ :@name, :@age]

puts person1.get_info # => Name: Joe, age: 14

p person1.instance_variables  # [ :@name, ;@age, :@additional_info]