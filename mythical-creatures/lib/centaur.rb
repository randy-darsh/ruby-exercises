class Centaur

  attr_reader :name,
              :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @crankiness_meter = 0
  end

  def shoot
    @crankiness_meter += 1
    if @crankiness_meter >= 3 or @standing == false
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @crankiness_meter += 1
    if @crankiness_meter >= 3 or @standing == false
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @crankiness_meter >= 3
      true
    else
      false
    end
  end

  def standing?
    @standing == true
  end

  def sleep
    if @standing == true
      "NO!"
    else
      @crankiness_meter = 0
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    @standing == false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    @crankiness_meter = 0
    if @standing == false
      "NO!"
    elsif rested?
      @sick = true
    end
  end

  def rested?
    if @crankiness_meter < 3
      true
    else
      false
    end
  end

  def sick?
    @sick == true
  end

end
