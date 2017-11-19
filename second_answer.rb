require './first_answer.rb'

	def array_to_intermediary_result(array)
		result = array.map {|inner_arr| inner_arr.size > 0 ? inner_arr.select(&:odd?) : inner_arr}	
        print_arrays(result)
	end


# array_to_intermediary_result([[], [1, 2, 3], [4, 5], [], [6]])

# array_to_intermediary_result([[],[1,2,3],[4,5],[],[],[6],[7,8],[],[9],[10],[]])