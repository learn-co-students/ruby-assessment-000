describe "Level 4" do
  describe "Methods" do
    # For this assignment create a file in the lib directory.
    # Create the methods the tests are asking for
    let(:school) do 
      # Using let makes a value named school available in all of the tests.
      # This hash will reset at the beginning of each test.
      { 
        :name => "Happy Funtime School",
        :location => "NYC",
        :instructors => [ 
          {:name=>"Blake", :subject=>"Being Awesome" },
          {:name=>"Steven", :subject=>"Being Very Cool"},
          {:name=>"Katie", :subject=>"Being Pretty Chill"}
        ],
        :students => [ 
          {:name => "Marissa", :grade => "B"},
          {:name=>"Billy", :grade => "F"},
          {:name => "Frank", :grade => "A"},
          {:name => "Sophie", :grade => "C"}
        ]
      }
    end

    it "returns a student grade by name" do
      begin
        expect(grade_for("Marissa", school)).to eq("B")
      rescue NoMethodError
        abort "You have to define a grade_for method in lib/level_4.rb"
      end
    end

    it "adds new top level keys" do
      add_new_property(:ranking, 1, school)
      expect(school[:ranking]).to eq 1
    end
  end
end
