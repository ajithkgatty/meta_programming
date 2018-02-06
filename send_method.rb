# Below example shows how we can normally declare the object and assign the values. 
# Example 2 shows how we can replace all normal assigning of variable by a send.

#Example 1
class Account
	attr_accessor :name, :email, :address, :note
end

user_info = {
	name: "ajith kumar",
	email: "ajith@example.com",
	address: "1101 temple road bangalore",
	note: "demo of super usage"
}


account = Account.new
account.name = user_info[:name]
account.email = user_info[:email]
account.address = user_info[:address]
account.note = user_info[:note]

puts "Normal assign method"
puts account.inspect



#Example 2  here send used to assign values to the new account object
class NewAccount
	attr_accessor :name, :email, :address, :note

	def assign_values(values)
		values.each_key do | k |
			self.send("#{k}=", values[k])
		end
	end
end



user_info1 = {
	name: "ajith kumar",
	email: "ajith@example.com",
	address: "1101 temple road bangalore",
	note: "demo of super usage"
}

account1 = NewAccount.new
account1.assign_values(user_info1)
puts "Usage of the send method. assign_values will assign the values internally."
puts account1.inspect