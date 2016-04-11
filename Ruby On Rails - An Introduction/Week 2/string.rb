single_quoted='ice cream \n followed by it\'s a party'
double_quoted="ice cream \n followed by it\'s a party"

puts single_quoted # => ice cream \n followd by it's a party
puts double_quoted # => ice cream
                   # =>     followd by it's a party

def multiply(one, two)
  "#{one} mulpilied by #{two} equals #{one * two}"
end
puts multiply(5, 3)
# => 5 multiplied by 3 equals 15

puts '-------------------------------------------------------------'

my_name=" tim"
puts my_name.lstrip.capitalize # => " Tim"
p my_name # => " tim"
my_name.lstrip! # (destructive) removes the leading space
my_name[0]='K' # replace
puts my_name

cur_weather=%Q{It's a hot day outside
                Grab Your umbrellas}
cur_weather.lines do |line|
  line.sub! 'hot' , 'rainy' # substitute hot with rainy
  puts"#{line.strip}"
end
# => It's a rainy day outside
# => Grab Your umbrellas