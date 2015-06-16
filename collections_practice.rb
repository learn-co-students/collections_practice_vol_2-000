def begins_with_r(array)
	#Return true if every element of the tools array starts with an "r" 
	#and false otherwise.
	array.each do |string|
		if string.start_with?("r") != true
			return false
		end
	end
	true
end

def contain_a(array)
	#return all elements that contain the letter 'a'
	array_of_a = [ ]
	array.each do |string|
			if string.include?("a") == true
				array_of_a << string
			end
	end
	array_of_a
end

def first_wa(array)
	#Return the first element that begins with the letters 'wa'
	array.each do |element|
		if element.class == String 
			if element.start_with?("wa") == true
				return element
			end
		end
	end
	false
end
def remove_non_strings(array)
	#remove anything that's not a string from an array
	string_array = [ ]
	array.each do |element|
		if element.class == String
			string_array << element
		end
	end
    string_array
end

def count_elements (array)
	#count how many times something appears in an array
	name_count = Hash.new 
	count = [ ]
	array.each do |name_set|
    	name_set.each do |name|
    		if name_count.has_key?(name)
    			name_count[name] = name_count[name] + 1
    		else
    			name_count[name] = 1
    		end
    	end
	end
	name_count
end

def merge_data
	#combines two nested data structures into one
end

def find_cool
	#find all cool hashes
end

def organize_schools
	# organizes the schools by location
end