movies = [
  ['Alfonso Cuaron',  'Gravity'],
  ['Spike Jonze',     'Her'],
  ['Martin Scorsese', 'The Wolf of Wall Street']
]

movie_hash = {}

movies.each do |k, h|
  movie_hash[k] = h
end

puts movie_hash

# =========> INJECT
numbers = [4, 8, 2, 6]

sum = numbers.inject(0) do |result, num|
  intermediate_result = result + num
  intermediate_result
end
# Iteration|result|num
# 0th      |0     |4
# 1st      |4     |8
# 2nd      |8     |12
# 3rd      |2     |14
# 4th      |6     |20
puts sum
 # ========

 imdb = movies.inject({}) do |result, (director, film)| # => |result, movie|
   result[director] = film # => result[movie[0]] = movie[1]
   result
end
puts imdb
