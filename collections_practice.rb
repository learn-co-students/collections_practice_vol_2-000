require 'pry'
require 'pry-nav'

def begins_with_r(tools)
	tools.each do |tool|
		if tool =~ /^[^rR]/ 
			return false
		end
	end
	true
end
def contain_a(array)
	results =[]
	array.each do |item|
		if item =~ /a/
			results.push(item)
		end
	end
	results
end
def first_wa(array)
	results =[]
	array.each do |item|
		if item =~ /^wa/
			return item
		end
	end
	return nil	
end
def remove_non_strings(array)
	results =[]
	array.each do |item|
		if item.is_a?(String)
			results.push(item)
		end
	end
	return results
end
def count_elements(elements)
	count_array = []
	count = Hash.new
	unique_elements = elements.uniq
	unique_elements = unique_elements.map{|c| [c, elements.count(c)]}
	unique_elements.collect do |element|
		count[:name] = element[0][:name]
		count[:count] = element[1]
		count_array.push(count)
		count = {}
	end
	count_array
end
def merge_data(names, data)
	names.each do |name|
		data.each do |datum|
			name[:awesomeness] = datum[name[:first_name]][:awesomeness]
			name[:height] = datum[name[:first_name]][:height]
			name[:last_name] = datum[name[:first_name]][:last_name]
		end
	end
	names
end
def find_cool(peeps)
	peeps.each do |peep|
		if not peep[:temperature] == "cool"
			peeps.delete(peep)
		end
	end
	peeps
end
def organize_schools(schools)
	organized = Hash.new
	cities = []
	schools.each do |school|
		cities.push(school[1][:location])
	end
	cities = cities.uniq
	cities.each do |city|
		organized[city] = []
		schools.each do |school|
			if city == school[1][:location]
				organized[city].push(school[0])
			end
		end
	end
	organized
end