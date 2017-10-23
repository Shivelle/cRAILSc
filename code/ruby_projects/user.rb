module Destructable  # naming convenntion: should end with "able"
    def destroy(anyobject)
        puts "I will destroy the object!"
    end
end

# create user class/prototype
class User
    # include module to get access
    include Destructable
    # setting a getter and setter method
    attr_accessor :name, :email
    def initialize(name, email)
       @name = name
       @email = email
    end
    
    def run
        puts "Hey I'm running"
    end
    
    
    def self.identify_yourself
        puts "Hey, I am a class method"
    end
end

# define Buyer/Seller/Admin as a subclasses of User
class Buyer < User 
    def run 
        puts "Hey, I'm not running and I'm in buyer class."
    end
end

class Seller < User

end

class Admin < User

end



#=OUTPUT============================================================================#
# create new user
user = User.new("Sarah", "sarah@example.com")
puts "My user's name is #{user.name} and its email is #{user.email}."
user.name = "Ruby" 
user.email = "flausch@example.com"
puts "My user's new name is #{user.name} and its new email is #{user.email}."


buyer1 = Buyer.new("John Doe", "johndoe@eample.com")
buyer1.run
seller1 = Seller.new("John Doe1", "johndoe1@eample.com")
seller1.run
admin1 = Admin.new("John Doe2", "johndoe2@eample.com")
admin1.run

puts Buyer.ancestors
User.identify_yourself

user3 = User.new("Jenny", "jennybrainz@abc.com"); 
user3.destroy("myname")