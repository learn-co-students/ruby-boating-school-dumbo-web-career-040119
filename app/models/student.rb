class Student

  attr_reader :first_name

  @@all =[]

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_student(first_name)
    self.all.select {|student| student.first_name == first_name}
  end

  def add_boating_test(instructor, name, status)
    BoatingTest.new(self, instructor, name, status)
  end

  def grade_percentage
    grade = BoatingTest.all.select {|test| test.student == self}
    grade.map!(&:status)

    passed_tests = grade.select {|test| test == "passed"}

    passed_tests.length/grade.length.to_f * 100
  end

end
