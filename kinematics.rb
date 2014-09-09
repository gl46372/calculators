# input
puts "What do you know? --put a 'need' in place of unknown put a dn in place of unneeded"
puts "Vf:"
vf = gets.chomp
puts "Vi:"
vi = gets.chomp
puts "Delta X:"
delta_x = gets.chomp
puts "a:"
a = gets.chomp
puts "t:"
t = gets.chomp
# Check inputs
stringcheck = vf + vi + delta_x + a + t
dn_count = stringcheck.count "dn"
if dn_count >= 2
	puts "Error. only one variable can be unknown and unwanted"
	#RESTART
need_count = stringcheck.count "need"
# Calculation
if vf == "need" and delta_x == "dn"
	vi = vi.to_f
	a = a.to_f
	t = t.to_f
	vf = vi + a * t
	puts "Vf is equal to:"
	puts vf
elsif vf == "need" and t == "dn"
	vi = vi.to_f
	a = a.to_f
	delta_x = delta_x.to_f
	vf = ((vi**2) + 2 * a * delta_x)**0.5
	puts "Vf is equal to:"
	puts vf
elsif vf == "need" and a == "dn"
	delta_x = delta_x.to_f
	vi = vi.to_f
	t = t.to_f
	vf = (2 * delta_x) / t - vi
	puts "Vf is equal to"
	puts vf
elsif vi == "need" and delta_x == "dn"
	vf = vf.to_f
	a = a.to_f
	t = t.to_f
	vi = vf - a * t
	puts "Vi is equal to"
	puts vi
elsif vi == "need" and vf == "dn"
	delta_x = delta_x.to_f
	a = a.to_f
	t = t.to_f
	vi =(delta_x - 0.5 * a * (t**2))/ t
	puts "Vi is equal to"
	puts vi
elsif vi == "need" and t == "dn"
	vf = vf.to_f
	a = a.to_f
	delta_x = delta_x.to_f
	vi = ((vf**2) - (2 * a * delta_x))**0.5
	puts "Vi is equal to"
	puts vi
elsif vi == "need" and a == "dn"
	vf = vf.to_f
	delta_x = delta_x.to_f
	t = t.to_f
	vi = ((delta_x / t) * 2) - vf
	puts "Vi is equal to"
	puts vi
elsif a == "need" and delta_x == "dn"
	vf = vf.to_f
	vi = vi.to_f
	t = t.to_f
	a = (vf - vi) / t
	puts "The acceleration is"
	puts a
elsif a == "need" and vf == "dn"
	delta_x = delta_x.to_f
	vi = vi.to_f
	t = t.to_f
	a = (delta_x - vi * t) / (0.5 * t**2)
	puts "The acceleration is"
	puts a
elsif a == "need" and t == "dn"
	vf = vf.to_f
	vi = vi.to_f
	delta_x = delta_x.to_f
	a = (vf**2 - vi**2) / (2 * delta_x)
	puts "The acceleration is"
	puts a
elsif t == "need" and delta_x == "dn"
	vf = vf.to_f
	vi = vi.to_f
	a = a.to_f
	t = (vf - vi) / a
	puts "The time it will take is"
	puts t
elsif t == "need" and vf == "dn"
	delta_x = delta_x.to_f
	vi = vi.to_f
	a = a.to_f
	t = (delta_x - 0.5 * a * t**2) / vi
	puts "The time it will take is"
	puts t
elsif t == "need" and a == "dn"
	vf = vf.to_f
	vi = vi.to_f
	delta_x = delta_x.to_f
	t = delta_x / (0.5 * (vi + vf))
	puts "The time it will take is"
	puts t
elsif delta_x == "need" and vf == "dn"
	t = t.to_f
	vi = vi.to_f
	a = a.to_f
	delta_x = vi * t + 0.5 * a * t**2
	puts "The displacement is"
	puts delta_x
elsif delta_x == "need" and t == "dn"
	vf = vf.to_f
	vi = vi.to_f
	a = a.to_f
	delta_x = (vf**2 - vi**2) / (2 * a)
	puts "The displacement is"
	puts delta_x
elsif delta_x == "need" and a == "dn"
	t = t.to_f
	vi = vi.to_f
	vf = vf.to_f
	delta_x = 0.5 * (vi + vf) * t
	puts "The displacement is"
	puts delta_x
end
