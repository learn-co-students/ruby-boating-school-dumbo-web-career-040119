class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def get_test(student, test_name)
    BoatingTest.all.find {|test| test.student.first_name == student && test.name == test_name && test.instructor == self}
  end

  def pass_student(student, test_name)
    get_test(student, test_name).status = "passed"
  end

  def fail_student(student, test_name)
    get_test(student, test_name).status = "failed"
  end

end
