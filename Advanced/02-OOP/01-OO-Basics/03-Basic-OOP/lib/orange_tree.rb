class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

  # attr_accessor
  # attr_writer
  attr_reader :height, :fruits, :dead, :age


  def initialize
    @height = 0
    @dead = false
    @fruits = 0
    @age = 0
  end

  def one_year_passes!
    @age += 1
    @fruits = 0
    if @age>10 && @age<=15
       @fruits += 200
    elsif @age>5 && @age<=10
        @fruits += 100
    else
    end
    if @age<=10
    @height += 1
    else
    end
    if @age == 100
    @dead = true
    elsif @age > rand(50)+49
    @dead = true
    else
    end
  end


  def pick_a_fruit!
    @fruits -= 1
  end

  def dead?
    @dead
  end

end

arbre = OrangeTree.new
puts arbre.age
60.times {arbre.one_year_passes!}
puts arbre.age
puts arbre.fruits
puts arbre.height
puts arbre.dead?