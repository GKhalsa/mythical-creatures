class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @food = 0
  end

  def hungry?
    if @food >= 3
      false
    else
      true
    end
  end

  def eat
    @food += 1
  end

end
