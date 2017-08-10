class Wizard

  attr_reader :name

  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
    @cast_count = 0
  end

  def bearded?
    @bearded == true
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    if @cast_count < 3
      true
    else
      false
    end
  end

  def cast
    @cast_count += 1
    "MAGIC MISSILE!"
  end

end
