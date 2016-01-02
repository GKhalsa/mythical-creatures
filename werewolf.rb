class Werewolf

  attr_reader :name, :location

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human = true
    @werewolf = false
    @action = 0
  end

  def human?
    @human
  end

  def change!
    @action += 1
    @human = !@human
    @werewolf = !@werewolf
  end

  def werewolf?
    @werewolf
    #!@human
  end

  def hungry?
    @action > 0
  end



end
