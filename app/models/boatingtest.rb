class BoatingTest

    attr_accessor :student, :test_name, :test_status, :instructor

    @@all = []

    def initialize(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all        
    end

end


########## DONE!!!!! ############

# * should initialize with:
# a Student (Object), 
# a boating test name (String), 
# a boating test status (String), 
# and an Instructor (Object)

# * `BoatingTest.all` returns an array of all boating tests