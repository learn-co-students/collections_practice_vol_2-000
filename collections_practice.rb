def begins_with_r(array)
<<<<<<< HEAD
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
=======
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
>>>>>>> 1c58917c98b627fa76571fe095fa733424473406
    string_array
end

def count_elements (array)
<<<<<<< HEAD
 #count how many times something appears in an array
  final_count = [ ]

  name_count = Hash.new 

  unique = array.uniq
  unique = unique.map do |name|
    [name, array.count(name)]
  end
    unique.collect do |array|
    name_count[:name] = array[0][:name]
    name_count[:count] = array[1]
    final_count << name_count
    name_count = { }
  end
  final_count
end

def merge_data(keys, data)
 #combines two nested data structures into one
 new_array = [ ]
 keys.each do |k|
  x = k[:first_name]
    data.each do |d|
      if d.has_key?(x)
        new_hash = {:first_name=>x, :awesomeness=>d[x][:awesomeness], :height=>d[x][:height], :last_name=>d[x][:last_name]}
          new_array << new_hash
      end
    end
 end
 new_array
end

def find_cool(data)
 #find all cool hashes
 new_array = [ ]
 data.each do |name|
  if name[:temperature] == "cool"
    new_array << name
  end
 end
 new_array
end

def organize_schools(schools)
 # organizes the schools by location
 sorted_hash = Hash.new

 cities = [ ]
 
 schools.each do |school|
  cities << school[1][:location]
 end
 
 cities = cities.uniq
 
 cities.each do |city|
    sorted_hash[city] = [ ]
    schools.each do |school|
        if city == school[1][:location]
          sorted_hash[city] << school[0]
        end
    end
 end
 sorted_hash
end 

=======
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
>>>>>>> 1c58917c98b627fa76571fe095fa733424473406
