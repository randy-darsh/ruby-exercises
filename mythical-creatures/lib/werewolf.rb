class Werewolf

  attr_reader :name,
              :location

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hunger = false
  end

  def human?
    @human == true
  end

  def change!
    @human = !@human
    @hunger = true
  end

  def wolf?
    @human == false
  end

  def hungry?
    @hunger == true
  end

  def consume(victim)
    if @human == false
      victim.status = :dead
      @hunger = false
      true
    else
      false
    end
  end

end
