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

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.select do |student|
      student.first_name == first_name
    end
  end

  def grade_percentage
    arr_students_tests = BoatingTest.all.select do |test|
      test.student == self
    end

    passed_tests = arr_students_tests.select do |test|
      test.test_status == "passed"
    end

    failed_tests = arr_students_tests.select do |test|
      test.test_status == "failed"
    end

    ratio = passed_tests.length.to_f / arr_students_tests.length
    ratio *= 100
  end


end
