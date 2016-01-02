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

  def rested?
    @action < 3
    # if @action < 3
    #   true
    # else
    #   false
    # end
  end

  def cast
    @action += 1
    "MAGIC MISSILE"
  end

end
