describe "Level 2" do
  describe "Hashes" do
    it "adds a new key" do
      instructor = {name: "Steven", age: 30}
      instructor[:location] = "NYC" # Add a key :location with a value of "NYC" to instructor
      expect(instructor[:location]).to eq("NYC")
    end

    it "prints out all the key value pairs in the hash" do
      instructor = {name: "Steven", age: 30}
      expect(STDOUT).to receive(:puts).with("Key is name. Value is Steven")
      expect(STDOUT).to receive(:puts).with("Key is age. Value is 30")
      instructor.each do |key, value|
         puts "Key is #{key}. Value is #{value}"
       end
      # Iterate over the hash and print each key value pair. 
      # Print using string interpolation to match the expectations.
    end

    it "returns a value from the hash" do
      instructor = {name: "Steven", age: 30}
      name = instructor[:name] # extract name value from the hash
      expect(name).to eq("Steven")
    end

    it "finds a key from a known value" do
       instructor = {name: "Steven", age: 30}
       key_from_value = instructor.key(30) # write code that finds a key where the value is 30
       expect(key_from_value).to eq(:age)
    end
  end
end
