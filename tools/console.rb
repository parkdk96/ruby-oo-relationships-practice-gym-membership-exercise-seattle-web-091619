# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
tom = Lifter.new("Tom", 1000)
bob = Lifter.new("Bob", 500)

anytime = Gym.new("Anytime Fitness")
ymca = Gym.new("YMCA")

membership1 = Membership.new(40, anytime, tom)
membership2 = Membership.new(40, anytime, bob)
membership3 = Membership.new(25, ymca, tom)

binding.pry

puts "Gains!"
