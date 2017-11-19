def number_to_symbol(number)
	return 'Twist Shout' if number % 15 == 0
	return 'Twist' if number % 3 == 0
	return 'Shout' if number % 5 == 0
	number
end

def twist_and_shout
	1.upto(100).each {|number| puts number_to_symbol(number) }
end

twist_and_shout