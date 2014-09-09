# input
puts "Get equation into form 'y = ax^2 + bx + c'"
puts "What is a?"
a = gets.to_f
puts "What is b?"
b = gets. to_f
puts "What is c?"
c = gets.to_f

# operation
solvedpos = ((-1 * b) + (b**2 - 4*a*c)**0.5)/(2*a)
solvedneg = ((-1 * b) - (b**2 - 4*a*c)**0.5)/(2*a)

# output
puts "The zeros are"
puts solvedpos
puts "and"
puts solvedneg
