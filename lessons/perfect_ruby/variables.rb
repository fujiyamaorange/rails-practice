class Ruler
  attr_accessor :length

  def set_default_length
    self.length = 30
    @length = 50
    length = 100
  end
end

ruler = Ruler.new
ruler.set_default_length
puts ruler.length