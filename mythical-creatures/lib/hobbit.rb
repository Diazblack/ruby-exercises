class Hobbit
  attr_accessor :name,
                :disposition

  def initialize(name, disposition = "adventurous")
    @name = name
    @disposition = disposition
  end

  def disposition
    if name.capitalize == "Samwise"
      "homebody"
    elsif name.capitalize == "Frodo"
      @disposition
    end
  end

end
