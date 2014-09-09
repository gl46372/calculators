# input
puts "Side A?"
side_a = gets.to_f

puts "Side B?"
side_b = gets.to_f
# operation
perimeter = (side_a * 2)+ (side_b * 2)

area = side_a * side_b

diagonal = side_a**2 + side_b**2

# output
puts "The perimeter is:"
puts perimeter

puts "The area is:"
puts area

puts "The diagonal has length:"
puts diagonal
