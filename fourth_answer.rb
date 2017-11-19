def count_spaces_helper(string, index, counter)
	return counter if index == string.length
	space_exists = string[index] == ' ' ? 1 : 0
	return count_spaces_helper(string, index+1, counter + space_exists)
end	

def count_spaces(string)
	puts count_spaces_helper(string, 0, 0)
end

count_spaces('Everyday a grape licks a friendly cow')


count_spaces(' Look, a distraction! ')