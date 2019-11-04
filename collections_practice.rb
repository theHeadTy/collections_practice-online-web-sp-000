# it 'should return an array sorted in ascending order' do
# expect(sort_array_asc([25, 7, 1])).to eq([1,7,25])
def sort_array_asc(array)
  array.sort
end

# expect(sort_array_desc([25, 7, 14])).to eq([25, 14, 7])
def sort_array_desc(array)
  array.sort { |a, b| b <=> a }
end

# expect(sort_array_char_count(["dogs", "cat", "Horses"])).to eq(["cat", "dogs", "Horses"])
def sort_array_char_count(array)
  array.sort { |a, b| a.size <=> b.size }
end

# expect(swap_elements(["blake", "ashley", "scott"])).to eq(["blake", "scott", "ashley"])
def swap_elements(array)
  array.rotate.reverse
end

def reverse_array(array)
  array.reverse
end

# it 'taking an array as an input, change the 3rd character of each element to a dollar sign.' do
# expect(kesha_maker(["blake", "ashley", "scott"])).to eq(["bl$ke", "as$ley", "sc$tt"])
def kesha_maker(array)
  new = []
  #array.each do |item|
    #new << item.gsub(item[2], '$')
  #end
  #new
  (0..array.size - 1).step { |n| 
    new << array[n].gsub(array[n][2], '$') 
  }
  new
end

def find_a(array)
  array.keep_if { |a| a.start_with?('a') }
end

def sum_array(numbers)
  numbers.sum
end

def add_s(array)
  new = []
  array.each_with_index do |arr, index|
    new << ((index == 1) ? arr : "#{arr}s")
  end
  new
end

sort_array_asc([25, 7, 1])
sort_array_desc([25, 7, 14])

sort_array_char_count(["dogs", "cat", "Horses"])

swap_elements(["blake", "ashley", "scott"])

reverse_array([12, 4, 35])

kesha_maker(["blake", "ashley", "scott"])

find_a(["apple", "orange", "pear", "avis", "arlo", "ascot" ])

sum_array([11,4,7,8,9,100,134])

add_s(["hand", "feet", "knee", "table"])

