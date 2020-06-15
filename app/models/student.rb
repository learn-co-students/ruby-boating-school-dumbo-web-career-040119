class Student

  attr_reader :first_name
  @@all = []
  def initialize(first_name)        # Student.new
    @first_name = first_name
    @@all << self   # self here - instances of class(record of all students)
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    boating_test = BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(first_name)
    self.all.select do |student|
      student.first_name == first_name
    end
  end

  def grade_percentage
    arr_all_of_students_test = BoatingTest.all.select do |test|
      test.student == self
    end

    pass = BoatingTest.all.select do |test|
      test.student == self && test.status == 'passed'
    end

    passed_test = arr_all_of_students_test.select do |test|
      test.status == 'passed'
    end
    ratio = (pass.length.to_f / arr_all_of_students_test.length).to_f * 100
    ratio
  end



end
