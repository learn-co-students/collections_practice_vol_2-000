# your code goes here
def begins_with_r(array)
  array.detect { |e| !e.start_with?('r') } == nil
end

def contain_a(array)
  array.select { |e| e.include? 'a' }
end

def first_wa(array)
  array.detect { |e| e.to_s.start_with? 'wa' }
end

def remove_non_strings(array)
  array.select { |e| e.class == String }
end

def count_elements(array)
  array.uniq.map do |e|
    e[:count] = array.count(e)
	e
  end
end

def merge_data(main_array, data_array)
  main_array.each do |main_e|
    data_e = data_array.detect { |data_e| data_e.has_key? main_e[:first_name] }
	if data_e != nil then
	  main_e.merge!(data_e[main_e[:first_name]])  
	end
  end
end

def find_cool(array)
  array.select() { |e| e[:temperature] == "cool" }
end

def organize_schools(hash)
  hash.each_with_object({}) do |(k, v), result|
    location = v[:location]
	if result[location] == nil then 
	  result[location] = [k]
	else
      result[location] << k
    end
  end
end