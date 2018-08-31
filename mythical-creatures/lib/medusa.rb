require './lib/person'

class Medusa
  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    @statues << person
    person.stoned

    victim_number  = @statues.length
    if victim_number > 2
      # binding.pry
      @statues[victim_number - 3].unstoned
    end
  end

end
