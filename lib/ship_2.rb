class Ship_2
  def initialize
    @makeup = [0, 0]
    @floating = true
  end
  def floating?
    @floating
  end
  def hit
    @makeup = [1,0]
    @makeup.inject { |sum, x| sum + x }
  end
  def check
    true
  end
  def status
    "All fine"
  end
end
