class Student

  attr_reader :fist_name
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

end




# * `Student.find_student` will take in a first name and output the student (Object) with that name
# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)
