names = ["Bob", "Sarah", "Leah", "Han Solo"]

# access element
names[0] # => Bob

# modify Element
names[0] = "Bobby"

# get the length
names.length # => gives length of array

# adds to the end of an array
names.push("Vader")
names << "Luke"

# removes from the end of an array
names.pop

# remove from the begining of an array?
names.shift

# add name to beginning of an array
names.unshift("Bob")
names.unshift("Luke")

# Iterators
=begin
1. map
2. filter
3. forEach
4. find
5. reduce

-- ruby
1. map / collect
2. each
3. find / detect
4. select / find_all
5. count
6. delete_if
7. any? / none?

=end
# names.filter(name => name[0].toLowerCase() == "v")
# filtered = names.detect { |name| name[0].downcase == "l" }

# names.join(", ").split(", ")

def my_map(array)
  # iterate through an array
  # we modify the array based on what's retuned in a block
  index = 0
  modified_array = []

  while index < array.length
    modified_array << yield(array[index])
    index += 1
  end
  modified_array
end


modified_names = my_map(names) do |name|
  name.reverse
end

modified_names_2 = my_map(names) do |name|
  name.upcase
end

p modified_names
p modified_names_2