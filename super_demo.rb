#This is to demonstrate the use of super.
#	In the Derived class one case use super to access the method of the parent class. In the below example Employee uses the initilize method of the Persion class.


class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end


class Employee < Person
	attr_accessor :salary

	def initialize(name, salary)
		super(name)
		@salary = salary
	end
end

# Using the super concept
p = Person.new("Ajith")
puts p.name

e = Employee.new("Kumar", 10000)
puts e.name
puts e.salary