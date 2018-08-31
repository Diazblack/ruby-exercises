class Hobbit
  attr_reader :name,
              :disposition,
              :age,
              :has_ring,
              :is_short

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @has_ring = assign_ring
    @is_short = true
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
   @age >= 33
  end

  def old?
    @age >= 101
  end

  def has_ring?
   @has_ring
  end

  def assign_ring
    @name == "Frodo"
  end
  def is_short?
    @is_short
  end
end
