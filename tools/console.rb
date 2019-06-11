require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

dave = Customer.new("Dave", "B")
tri = Customer.new("Tri", "Idk")

wendys = Restaurant.new("Wendy's")
marias = Restaurant.new("Maria's Empanadas")
cheeba_hut = Restaurant.new("Cheeba Hut")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
