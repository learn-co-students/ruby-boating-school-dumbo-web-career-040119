class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # (student, test_name, test_status, instructor)

    def add_boating_test(student, test_name, test_status)
        # new boating test
        binding.pry
        BoatingTest.new(student, test_name, test_status, self)
    end



end

############# TO DO ##########
# * `Instructor#pass_student` should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.
# * `Instructor#fail_student` should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.

#### DONE ####
# * initialize with a name
# * `Instructor.all` should return all instructors
# * `Instructor#add_boating_test` should initialize a new boating test with:
# a Student (Object), 
# a boating test name (String), 
# a boating test status (String), 
# and an Instructor (Object)
