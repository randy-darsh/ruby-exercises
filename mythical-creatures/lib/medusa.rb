require 'pry'

class Medusa

  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.turn_to_stone
    @statues << victim
    if @statues.count > 3
      @statues.shift.turn_to_human
    end
  end

end

class Person

  attr_reader :name,
              :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def turn_to_stone
    @stoned = true
  end

  def stoned?
    @stoned == true
  end

  def turn_to_human
    @stoned = false
  end

end
