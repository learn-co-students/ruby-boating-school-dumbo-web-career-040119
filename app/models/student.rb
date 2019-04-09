require 'pry'
class Student
  attr_reader :first_name

  @@all = []

  # should initialize with first_name
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  # Student.all should return all of the student instances
  def self.all
    @@all
  end

  # Student#add_boating_test should initialize a new boating test with a Student
  # (Object), a boating test name (String), a boating test status (String), and
  # an Instructor (Object).
  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  # Student.find_student will take in a first name and output the student
  # (Object) with that name. Look through all students, self.all, and select
  # only the student whose .first_name value == first_name passed in as arg.
  # Will output an array!
  def self.find_student(first_name)
    self.all.select do |student|
      student.first_name == first_name
    end
  end

  # Student #grade_percentage should return the percentage of tests that the
  # student has passed, a Float (so if a student has passed 3 / 9 tests that
  # they've taken, this method should return the Float 33.33)
  def grade_percentage
    # This is the total number of tests a student (self) has taken.
    student_tests = BoatingTest.all.select do |test|
      test.student == self
    end

    # From the total number of tests taken by that student (self), we just want
    # the one's that have passed.
    passed_test = student_tests.select do |test|
      test.status == "passed"
    end
    # From the total number of tests taken by that student (self), we just want
    # the one's that have failed.
    failed_test = student_tests.select do |test|
      test.status == "failed"
    end

    # Now we need to find the percent of tests that this student (self) has
    # passed compared to the total number of tests they have taken.
    # Multiply by 100 to get a % value instead of decimal.
    # ratio = (passed_test.length.to_f)/(student_tests.length)
    # ratio * 100         SAME AS BELOW
    ratio = "%.2f" % (passed_test.length.fdiv(student_tests.length)*100).to_s + "%"
    # The "%.2f"
  end

end
