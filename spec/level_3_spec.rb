require "pry"

describe "Level 3" do
  describe "Nested Structures" do
      let(:school) do 
        # Using let makes a value named school available in all of the tests.
        # This hash will reset at the beginning of each test.
        { 
          :name => "Happy Funtime School",
          :location => "NYC",
          :instructors => [ 
            {:name=>"Blake", :subject=>"Being Awesome" },
            {:name=>"Steven", :subject=>"Being Just 'OK'"},
            {:name=>"Jeff", :subject=>"Karaoke"}
          ],
          :students => [ 
            {:name => "Marissa", :grade => "B"},
            {:name=>"Billy", :grade => "F"},
            {:name => "Frank", :grade => "A"},
            {:name => "Sophie", :grade => "C"}
          ]
        }
      end

      it "modifies the hash" do 
        school[:founded_in] = 2013
      # modify school hash. Add key :founded_in with a value of 2013
      expect(school[:founded_in]).to eq(2013)
    end

    it "adds to a nested array" do
      school[:students].push(:name => "Adam")
      # Add a student to the end of the school's students' array.
      expect(school[:students].count).to eq(5)
      expect(school[:students].last[:name]).to_not eq("Sophie")
    end

    it "deletes values from nested array" do
      school[:students].delete_at(1)
      # Delete the student named "Billy" from the hash
      expect(school[:students].count).to eq(3)
      expect(school[:students].find {|student| student[:name] == 'Billy'}).to be_nil
    end

    it "modifies all values from nested array" do
      school[:students].collect {|hash| hash[:semester] = "Summer"}
      # Add a key to every student in the students array with a key of :semester and assign it the value "Summer".
      expect(school[:students].all? {|student| student[:semester] == "Summer"}).to eq(true)
    end

    it "changes value of hash in nested array" do
      school[:instructors][1].store(:subject, "Being Fantastic")
      # Change Steven's subject to "Being Fantastic"
      expect(school[:instructors].find{|instructor| instructor[:name] == "Steven"}[:subject]).to eq "Being Fantastic"
    end

    it "changes value of hash in nested students array" do
      school[:students][2].store(:grade, "F")
      # Change Frank's grade from "A" to "F".
      expect(school[:students].find{|student| student[:name] == "Frank"}[:grade]).to eq "F"
    end

    it "finds student by their grade" do

      student_name = school[:students].collect { |hash| hash[:name] if hash.has_value?("B")}.compact![0]
      expect(student_name).to eq "Marissa"
    end

    it "finds subject by its instructor" do
      subject_name = school[:instructors].collect { |hash| hash[:subject] if hash.has_value?("Jeff")}.compact![0]
      expect(subject_name).to eq("Karaoke")
    end

    it "returns all values from all hashes, including nested ones" do
      expect(STDOUT).to receive(:puts).with("Happy Funtime School")
      expect(STDOUT).to receive(:puts).with("NYC")
      expect(STDOUT).to receive(:puts).with("Blake")
      expect(STDOUT).to receive(:puts).with("Being Awesome")
      expect(STDOUT).to receive(:puts).with("Steven")
      expect(STDOUT).to receive(:puts).with("Being Just 'OK'")
      expect(STDOUT).to receive(:puts).with("Jeff")
      expect(STDOUT).to receive(:puts).with("Karaoke")
      expect(STDOUT).to receive(:puts).with("Marissa")
      expect(STDOUT).to receive(:puts).with("B")
      expect(STDOUT).to receive(:puts).with("Billy")
      expect(STDOUT).to receive(:puts).with("F")
      expect(STDOUT).to receive(:puts).with("Frank")
      expect(STDOUT).to receive(:puts).with("A")
      expect(STDOUT).to receive(:puts).with("Sophie")
      expect(STDOUT).to receive(:puts).with("C")

      # puts all the values in the school. NOTE: If this takes too long, skip it!
 
      puts school[:name]
      puts school[:location]
      school[:instructors].each do |hash|
        hash.each do |key, value|
          puts value
        end
      end
      school[:students].each do |hash|
        hash.each do |key, value|
          puts value
        end
      end

    end
  end
end
