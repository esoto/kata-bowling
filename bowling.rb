class Bowling

  attr :pins

  def score(*pins)
    @pins = pins
    score = pins.inject(0, :+)
    score += sum_spares
    score += sum_strikes
    score
  end

  def sum_strikes
    score = 0
    pins.each_index do |index|
      if roll_at(index) == 10
        score += roll_at(index+1) + roll_at(index+2) 
      end
    end
    score
  end

  def sum_spares
    score = 0
    pins.each_index do |index|
      if index % 2 == 0
        score += roll_at(index+2) if spare?(index)
      end
    end
    score
  end

  def spare?(index)
    roll_at(index) + roll_at(index+1) == 10
  end

  def roll_at(index)
    pins.fetch(index, 0)
  end
end
