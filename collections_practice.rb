def begins_with_r(array)
  array.each do |x|
    if x.start_with?("r") != true
      return false
    end
  end
  true
end

def contain_a(array)
  array.select { |x| x.include?("a") }
end

def first_wa(array)
  array.detect { |x| x.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.select { |x| x.class == String }
end

def count_elements(array)
  result = []
  new_hash = Hash.new 0
  array.each do |x|
    new_hash[x] += 1
  end

  new_hash.each do |x, y|
    x.each do |e, c|
      new_hash = {:name => c, :count => y}
      result << new_hash
    end
  end  
  result
end

def merge_data(keys, data)
 new_array = []
  keys.each do |y|  
   x = y[:first_name]
    data.each do |c|
      if c.has_key?(x)
        new_hash = {:first_name=>x, :awesomeness=>c[x][:awesomeness], :height=>c[x][:height], :last_name=>c[x][:last_name]}
        new_array << new_hash
      end
    end
  end
  new_array
end

# [{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, 
# {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]


# [{:first_name=>"blake"}, {:first_name=>"ashley"}]

def find_cool(array)
  array.select {|x| x[:temperature] == "cool"}
end

def organize_schools(schools)
  new_hash = Hash.new { |new_school, loca| new_school[loca] = []}
  schools.each do |school, location|
    location.each do |x, y|
      new_hash[y] << school
    end
  end
  new_hash  
end

{"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot camp chicago"]}

