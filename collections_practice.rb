def begins_with_r(words)
  # return true for all words that start with "r" else return false
  words.all? { |word| word.start_with?("r") }
end

def contain_a(words)
  # return all elements that contain the letter 'a'
  words.find_all { |word| word.include?("a") }
end

def first_wa(words)
  # Return the first element that begins with the letters 'wa'
  words.find { |word| word.to_s.include?("wa") }
end

def remove_non_strings(array)
  # remove anything that's not a string from an array
  array.delete_if { |word| word.class != String }
end

def count_elements(names_array)
  # count how many times something appears in an array
  names_array.each_with_object(Hash.new(0)) { |hash, key| key[hash[:name]] += 1 }.
    map { |name, count| { :name => name, :count => count } }
end

def merge_data(keys, data)
  # combines two nested data structures into one
  data[0].values.map.with_index { |value, index| keys[index].merge(value) }
end

def find_cool(array)
  # find all cool hashes
   array.find_all {|temperature| temperature.has_value?("cool") }
end

def organize_schools(schools)
  # organizes the schools by location
  organized_schools = Hash.new(0)
  schools.each { |school, data|
    organized_schools.include?(data[:location]) ?
    organized_schools[data[:location]] << school :
    organized_schools[data[:location]] = [school]
  }
  organized_schools
end
