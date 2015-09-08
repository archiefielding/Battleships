class Ship_2
  def initialize
    @makeup = [0, 0]
    @floating = true
  end

  def floating?
    @floating
  end

  def sunk?
    not floating?
  end

  def hit(number)
    @makeup[number] = 1
    status_update
    @makeup[number]
  end

  def status_update
    if status == "Sunk"
      @floating = false
    else
      @floating = true
    end
  end

  def check
    @makeup.inject { |sum, x| sum + x }
  end

  def status
    if check == 0
      "All fine"
    elsif check < @makeup.length
      "Damaged"
    else
      "Sunk"
    end
  end
end
