require 'open-uri'
require 'json'



def generate_grid(grid_size)
  #TODO: generate random grid of letters
grid=[]
for i in 0..8
  grid << ("a".."z").map{|letter| letter}.sample
end
grid
end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
end
