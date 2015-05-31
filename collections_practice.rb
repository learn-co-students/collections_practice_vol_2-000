# your code goes here
def begins_with_r(arr)
  arr.each do |x| 
    if x.start_with?("r") != true
      return false
    end
  end
  true
end  

def contain_a(arr)
  new_array = []
  arr.each do |x|
    if x.include?("a") == true
      new_array << x
    end
  end
  new_array
end     

def first_wa(arr)
  arr.each do |x| 
    if x.class == String
      if x.start_with?("wa") != false
        return x
      end
    end  
  end
  false
end  

def remove_non_strings(arr)
  new_array = []
  arr.each do |x|
    if x.class == String
      new_array << x
    end  
  end  
  new_array
end      

def count_elements(arr)
  counts = []
  new_hash = Hash.new 0
  arr.each do |x|
    new_hash[x] += 1
  end  

  #reformatting to pass test currently new_hash = {{:name=>"blake"}=>2, {:name=>"ashley"}=>1}
  #needs to be [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
  new_hash.each do |x,y|
    x.each do |a,b|
      new_hash = {:name => b, :count => y}
      counts << new_hash
    end
  end  

  counts 

end



def merge_data(key,data)
new_array = []
  key.each do |x|
    sn = x[:first_name]
    data.each do |y|
      if y.has_key?(sn)
        new_hash = {:first_name => sn, :awesomeness => y[sn][:awesomeness],:height => y[sn][:height],:last_name =>y[sn][:last_name]}
        new_array << new_hash
      end
    end    
  end
  return new_array
end

def find_cool(arr)
  cool = []
  arr.each do |x|
    if x[:temperature] == 'cool'
      cool << x
    end
  end
  cool
end

def organize_schools(arr)
new_hash = Hash.new{|city,school_name|city[school_name] = Array.new}
  arr.each do |school,info|
    info.each do |location,city|
        new_hash[city] << school 
    end  
  end  

return new_hash

end

[{"flatiron school bk"=>{:location=>"NYC"}, "flatiron school"=>{:location=>"NYC"}, "dev boot camp"=>{:location=>"SF"}, "dev boot camp chicago"=>{:location=>"Chicago"}, "general assembly"=>{:location=>"NYC"}, "Hack Reactor"=>{:location=>"SF"}}]





    {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
     "SF"=>["dev boot camp", "Hack Reactor"],
     "Chicago"=>["dev boot camp chicago"]}







