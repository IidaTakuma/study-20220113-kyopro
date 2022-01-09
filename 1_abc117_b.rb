
N = gets.to_i
L = gets.split.map(&:to_i)

total_without_max = L.inject(:+) - L.max

if total_without_max > L.max
  puts "Yes"
else
  puts "No"
end
