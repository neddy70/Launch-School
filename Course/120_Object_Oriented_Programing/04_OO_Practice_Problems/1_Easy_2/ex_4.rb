# ex_4.rb
# What could you add to this class to simplify it and remove two methods from the class definition while still maintaining the same functionality?

class BeesWax
  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

# Answer

# we could add the following line to the top of the class
attr_accessor :type