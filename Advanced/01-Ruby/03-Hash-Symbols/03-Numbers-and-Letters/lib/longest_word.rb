require 'open-uri'
require 'json'


def generate_grid(grid_size)
  #TODO: generate random grid of letters
  grid=[]
  for i in 0..8
    grid << ("A".."Z").to_a.sample
  end
  grid
end

def is_in_grid?(grid,word)
  letters=word.split(//).map &:upcase
  bool_vector=[]
  letters.each{|letter| bool_vector.push(letters.count(letter)<=grid.count(letter))}
  return bool_vector.all?
end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
  result = nil
  if is_in_grid?(grid,attempt)
    api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
    open(api_url) do |stream|
      quote = JSON.parse(stream.read)
      if quote['term0']
        result = {
          time: end_time-start_time,
          translation:  quote['term0']['PrincipalTranslations']['0']['FirstTranslation']['term'],
          score: attempt.size / (end_time-start_time),
          message: "well done"
        }
      else
        result = {
          time: end_time-start_time,
          translation:  nil,
          score: 0,
          message: "not an english word"
        }
      end
    end
  else
    result =
    {
      time: end_time-start_time,
      translation:  nil,
      score: 0,
      message: "not in the grid"
    }
  end
  result
end
