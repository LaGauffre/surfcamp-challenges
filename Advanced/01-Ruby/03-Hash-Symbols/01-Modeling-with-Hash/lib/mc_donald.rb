#Hash qui contient des burgers
COURSE_HASH = {
  "Cheese Burger" => 290,
  "Big Mac"=> 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170
}
MENU={
  "Happy Meal" => ["Cheese Burger", "French fries", "Coca"],
  "Best Of Big Mac" => ["Big Mac", "French fries", "Coca" ],
  "Best Of Royal Cheese" => ["Royal Cheese", "Potatoes", "Sprite"]
}
def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  COURSE_HASH[burger] + COURSE_HASH[side] + COURSE_HASH[beverage]
end


def calories_counter(*orders)
  calories=0
  #TODO: return number of calories for a less constrained order
  orders.each{|order| if COURSE_HASH[order].nil?
    calories += poor_calories_counter(MENU[order][0],MENU[order][1],MENU[order][2])
  else
    calories += COURSE_HASH[order].to_i
  end
}
  calories
end
