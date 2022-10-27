# Objects make up properties and actions (functionality)
# Hashes does not have actions!
person = {
   name: "Bob",
   age: 32,
   description: "Bob does what Bob does",
   pets: [
    {
      name: "Garfield"
    },
    {
      name: "Odi"
    },
    {
      name: "Spot"
    }
   ]
}

pet_names = person[:pets].map { |pet| pet[:name] }.join(", ")

p "name: #{person[:name]}"
p "pets: #{pet_names}"