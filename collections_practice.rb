require "pry"

def begins_with_r(array)
  y=array.collect {|x| x[0]=="r"}
  y.all?
end

def contain_a(array)
  new_array = []
  array.each {|x|
    if x.include?("a")
      new_array<<x
    end
  }
  new_array
end

def first_wa(array)
  array.each {|x| 
    if x[0,2] == "wa" 
      return x
    end
  }
end

def remove_non_strings(array)
  array.each_with_object([]) {|x,a|
    if x.class == String 
      a<<x
    end
  }
end

def count_elements(array_of_hashes)
  array_of_hashes.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array_of_hashes.each do |other_hash|
      if other_hash[:name] == name
        hash[:count] +=1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  answer = []
  data.each do |name|
    name.each do |x|
      answer<<x[1]
    end
  end
  answer[0].merge!(keys[0])
  answer[1].merge!(keys[1])
  answer
end

def find_cool(array_of_hashes)
  array_of_hashes.each do |hash|
    hash.each do |key,value|
      if value == "cool"
        return [hash]
      end
    end
  end
end

def organize_schools(hash)
  organized_schools = {} 
  hash.each do |school,location_hash|
    location_hash.each do |symbol,location|
      if organized_schools[location]
        organized_schools[location]<<school
      else
        organized_schools[location] = [school]
      end
    end
  end
  organized_schools
end




