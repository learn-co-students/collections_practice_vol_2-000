def contain_a(array)
  new_array = []
  array.each {|x|
    n=0
    if x[n] == "a"
      new_array<<x
      n+=1
    }
  }
  new_array
end

  array_of_hashes.each_with_object([]) {|element,array|
    if array.include?(element)
      element[:count] +=1
      binding.pry
    else
      element.merge!({:count => 1})
      array<<element
    end
  }