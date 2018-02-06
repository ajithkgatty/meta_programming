#This is to implement the Abstract class feature in ruby. It is a class which do not implement any methods.

class AbstractKlass
	def welcome
		puts "#{method1} ----------> #{method2}"
	end 

	def test1
		p 'testing'
	end
end


class Definer < AbstractKlass

	# [:method1, :method2].each do |m|
	# 	define_method :m do |arg|
	# 		arg
	# 	end
	# end	

	def method1; "Hello"; end;
	def method2; "Everyone"; end;

	def test2; p "test 2 test 2"; end;
end



# Definer.new.welcome
# AbstractKlass.new.welcome
#Above code prints Hello -------------> Everyone
Definer.new.send(:test2)