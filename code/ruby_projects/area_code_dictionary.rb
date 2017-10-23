# Create a dictionary (hash) with 10 city names, where the city name would be a string and the key, and teh area code would be the value (x)
# Get input from the user on the city name (hint: use gets.chomp method) (x)
# Display the city names that are available to the user which are available in the dictionary (x)
# Display area code based on user's city choice
# Loop - keep the programm running and prompt the user for new city names to look up.
# Method to look up area code. This will take in a hash of the dictionary and the city name and will output area code. 
# Method to display just city names.
#=========================================================================================================================#

# dictionary 
dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732", 
    "munich" => "124", 
    "merzig" => "345", 
    "homburg" => "098", 
    "augsburg" => "446", 
    "erlangen" => "678", 
    "wadern" => "008", 
    "eurasburg" => "000", 
    "saarbruecken" => "999"
}

# method to disply city names
def show_cities(dial_book) 
    dial_book.each{|k, v|  puts k.capitalize }
end

# method to get area code, dial_book and the city name
def get_code(dial_book, key)
    dial_book[key]
end



# user interaction loop
loop do 
    puts "Do you want to look up an area code based on a city name?(Y/N)"
    
    answer = gets.chomp
    if answer != "Y" && answer != "y"
        break
    end
    
    # ask user for city name
    puts "Which city do you want the area code for?"
    show_cities(dial_book)
    puts "Enter your selection"
    prompt = gets.chomp
    
    # if there is a match, display city and city code
    if dial_book.include?(prompt) or dial_book.include?(prompt.capitalize) 
        puts "The area code for #{prompt.capitalize} is #{get_code(dial_book, prompt)}."
    
    # display error message if city can't be found 
    else
        puts "We are so sorry, but we couldn't find what you are looking for."

    end
    
end