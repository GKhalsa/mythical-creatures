class Pirate
  attr_reader :name, :job, :booty
  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @curse_counter = 0
    @booty = 0
  end

  def cursed?
    if @curse_counter >= 3
      true
    else
      false
    end
  end

  def commit_heinous_act
    @curse_counter += 1
  end

  def rob_ship
    @booty += 100
  end



end
