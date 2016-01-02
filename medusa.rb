
class Medusa
  attr_reader :name

  def initialize(name)
    @name = name
    @statue = []
    @unstoned = []
    @action = 0
  end

  def stare(victim1)
    @action += 1
    statues << victim1
    victim1.stoned = true
    if statues.count > 3
      @unstoned << statues.shift
      @unstoned[0].stoned = false
    end
  end

  def alive?
    if @action >= 5
      false
    else
      true
    end
  end

  def statues
    @statue
  end
end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end


end
