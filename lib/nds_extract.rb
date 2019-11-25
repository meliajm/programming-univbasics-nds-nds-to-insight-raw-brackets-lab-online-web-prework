$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# pp directors_database

# here's what to do
# get array of directors, length should be 9
# get array of worldwide_gross for each director for all movies
# zip arrays together to form hash 
# puts directors_database[0][:movies][5][:worldwide_gross]
def directors_totals(nds)
  binding.pry
  new_hash = {}
  row_index = 0 
  while row_index < directors_database.length do
      new_index = 0 
      # directors_array.push(directors_database[row_index][:name])
      while new_index < nds[row_index][:movies].length do 
          new_hash[nds[row_index][:name]] = (directors_database[row_index][:movies][new_index][:worldwide_gross])
          new_index += 1
      end
      row_index += 1 
  end
  new_hash
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  # directors_array = []
  # worldwide_gross_array = []
  # row_index = 0 
  # while row_index < directors_database.length do
  #   new_index = 0 
  #   directors_array.push(directors_database[row_index][:name])
  #   while new_index < directors_database[row_index].length do 
  #     worldwide_gross_array.push(directors_database[row_index][:movies][new_index][:worldwide_gross])
  #     new_index += 1
  #   end
  #   row_index += 1 
  # end
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  # result = Hash[directors_array.zip worldwide_gross_array]
  # puts worldwide_gross_array
  # puts result.length
  # puts directors_array.length
  # result
end
