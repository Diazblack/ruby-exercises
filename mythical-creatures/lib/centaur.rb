class Centaur
  attr_reader :name,
              :breed,
              :activity

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @activity = 0
  end

  def shoot
    @activity += 1
    if cranky? || @laying
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @activity += 1
    if cranky? || @laying
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @activity == 3
       @cranky = true
    end
    @cranky
  end

  def laying?
    @laying
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      "NO!"
    else
      @activity = 0
      @cranky = false
    end

  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @laying = false
    @standing = true
  end

  def drink_pocion
    if @laying
      "NO!"
    elsif @activity == 0
      "I'm Sick!!!!!"
    else
      @activity = 0
      @cranky = false
    end
  end


end
