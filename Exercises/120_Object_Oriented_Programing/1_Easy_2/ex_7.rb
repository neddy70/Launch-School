# ex_7.rb
# Pet Shelter
# Consider the following code:
#
# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')
#
# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')
#
# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
# Write the classes and methods that will be necessary to make this code run, and print the following output:
#
# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin
#
# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester
#
# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.
# The order of the output does not matter, so long as all of the information is presented.

class Pet
  attr_reader :type, :name
  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def adopt_pet(pet)
    @pets << pet
  end

  def print_pets
    pets.each { |pet| puts pet }
  end

  def number_of_pets
    @pets.size
  end
end

class Shelter
  attr_reader :pets_to_adopt
  def initialize
    @owners = []
    @pets_to_adopt = []
  end

  def adopt(owner, pet)
    @owners << owner unless @owners.include?(owner)
    owner.adopt_pet(pet)
  end

  def add_pet(pet)
    @pets_to_adopt << pet
  end

  def print_pets_for_adoption
    pets_to_adopt.each { |pet| puts pet }
  end

  def print_number_of_pets
    puts "The Animal shelter has #{@pets_to_adopt.size} unadopted pets."
  end

  def print_adoptions
    @owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.print_pets
    end
    puts "The Animal Shelter has the following unadopted pets:"
    print_pets_for_adoption
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."


buddy = Pet.new("dog", "Buddy")
silvester = Pet.new("cat", "Silvester")
shelter.add_pet(buddy)
shelter.add_pet(silvester)
shelter.print_adoptions
shelter.print_number_of_pets
