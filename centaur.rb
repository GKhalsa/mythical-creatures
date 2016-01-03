class Centaur

  attr_reader :name, :breed

  def initialize(name, breed)
    @name     = name
    @breed    = breed
    @standing = true
    @action   = 0
    @laying   = false
    @sick     = false
  end

  def shoot
    if cranky? || laying?
      'NO!'
    else
      @action += 1
      'Twang!!!'
    end
  end

  def run
    if cranky? || laying?
      'NO!'
    else
      @action += 1
      'Clop clop clop clop!!!'
    end
  end

  def cranky?
    @action >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      'NO!'
    else
      @action = 0
      'Ok!'
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def rested?
    if @action >= 3
      false
    else
      true
    end
  end

  def drink_potion
    if laying?
      'NO!'
    elsif rested?
      @sick = true 
    else
      @action = 0
      'Yum!'
    end
  end

  def sick?
    @sick
  end
end
