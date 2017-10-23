require 'json'

class User 
  attr_accessor :email, :name, :permissions
  
  def initialize(*args) #takes all incoming arguments and lists them in an array
    @email       = args[0]
    @name        = args [1]
    # get permissions via method from different file
    @permissions = User.permissions_from_template
  end
  
  def self.permissions_from_template
    file = File.read 'user_permissions_template.json'
    JSON.load(file, nil, symbolize_names: true)
  end
  
  def save 
    # store user data in json format
    self_json = {email: @email, name: @name, permissions: @permissions}.to_json
    
    # append data to users.json
    open('users.json', 'a') do |file|
      file.puts self_json
    end
    
  end
  
end