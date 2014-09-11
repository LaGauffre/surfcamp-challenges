class SurfBoard
  attr_accessor :height, :width, :thickness, :tail
  def initialize(height, width, thickness, tail)
    @height = height
    @width = width
    @thickness = thickness
    @tail = tail
  end
end

fish=SurfBoard.new(6.0,"20 1/2",2.2,"swallow")
longboard=SurfBoard.new(9.0,"19",3,"round")
fish.height
