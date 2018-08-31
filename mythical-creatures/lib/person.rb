class Person
  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned
    @stoned = true
  end

  def stoned?
    @stoned
  end

  def unstoned
    @stoned = false
  end 
end
