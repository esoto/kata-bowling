class Bowling

  def score(*pins)
    return pins.inject(0, :+) if pins.length > 3
    spare(*pins)
  end

  def spare(*pins)
    pins[0]+pins[1]+(pins[2]*2)
  end
end
