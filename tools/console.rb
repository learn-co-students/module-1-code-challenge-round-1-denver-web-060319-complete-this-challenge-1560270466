require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

dave = Customer.new("David Boehmer")
avi = Customer.new("Avi Flombaum")
other_person = Customer.new("That Guy")

marias = Restaurant.new("Maria's Empanadas")
adelitas = Restaurant.new("Adelitas")
steubens = Restaurant.new("Steuben's")

dave.add_review(adelitas, "things were great. they were so great. they were the greatest things.", 5)
avi.add_review(marias, "I mean, the place is across the street! like, RIGHT across the street!", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
