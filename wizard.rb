class Wizard
  attr_reader :name
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @action = 0
  end

  def bearded?
    @bearded
  end

  def incantation(words)
    "sudo #{words}"
  end

  def rested? #why false true and not true false
    if @action < 3
      true
    else
      false


    # if @action >= 3
    #   false
    # else
    #   true
    end
  end

  def cast
    @action += 1
    "MAGIC MISSILE"
  end

end
