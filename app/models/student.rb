class Student

  attr_reader :first_name
  @@all = []
  # * should initialize with `first_name`
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  # * `Student.all` should return all of the student instances
  def self.all
    @@all
  end

  # * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  # * `Student.find_student` will take in a first name and output the student (Object) with that name

  def self.find_student(first_name)
    self.all.select do |student|
      student.first_name == first_name
    end
  end

  # * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)
  def grade_percentage
    all_students_tests = BoatingTest.all.select do |test|
      test.student == self
    end
    passed_tests = all_students_tests.select do |test|
      test.status == "passed"
    end
    ratio = passed_tests.length.to_f / all_students_tests.length.to_f

    "#{ratio*100}%"
  end

end
