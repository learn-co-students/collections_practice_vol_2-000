def merge_data(keys, data)
  array=[]
  keys.each {|x|
    x.each_with_object({}) {|(k,v),h|
      array<<h[v]
      h[v] = {}
    }
  }
  array
end