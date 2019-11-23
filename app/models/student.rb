class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    # (student, test_name, test_status, instructor)

    def add_boating_test(test_name, test_status, instructor)
        # new boating test
        # binding.pry
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        binding.pry
        name = name.downcase
        
        # accepts first name 
        # returns the Student instance with that name
        # FIND THE FREAKING KID from the array off all peeps 

        # LONG VERSION:
        Student.all.find do |student|
            student.first_name.downcase == name
        end

        # SHORTER VERSION:
        # Student.all.find{|s| s.first_name == name}
    end

end

########## TO DO ############

# * `Student.find_student` will take in a first name and output the student (Object) with that name
# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)

### DONE ####

# * should initialize with `first_name`
# * `Student.all` should return all of the student instances
# * `Student#add_boating_test` should initialize a new boating test with:
# a Student (Object), 
# a boating test name (String), 
# a boating test status (String), 
# and an Instructor (Object)
