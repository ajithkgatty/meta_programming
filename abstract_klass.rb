#This is to implement the Abstract class feature in ruby. It is a class which do not implement any methods.

class AbstractKlass
	def welcome
		puts "#{method1} ----------> #{method2}"
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
end



Definer.new.welcome
#Above code prints Hello -------------> Everyone