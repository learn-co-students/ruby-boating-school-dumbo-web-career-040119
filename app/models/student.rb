class Student

    attr_reader :name, :student, :test_name, :instructor, :choosing_student
    attr_accessor :test_status

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def add_boating_test(test_name, test_status, instructor)
      BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
      Student.all.select{|student| student.name == name}
    end

    def grade_percentage
      student_tests = BoatingTest.all.select {|test| test.student == self} # <- we want to first find a student record withing the database of boating tests -> that's why it's "student" and not "first name"
      student_passed_tests = self.student_tests.select{|test| test.status == "passed"}
      percentage = self.student_passed_tests.to_f/self.all_tests.to_f
      return "#{percentage}%"
    end

end


# Student class:
#
      # should initialize with first_name
      # Student.all should return all of the student instances
      # Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
      # Student.find_student will take in a first name and output the student (Object) with that name
      # Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
