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

  def pass_student(student, test_name)
    test_to_pass = BoatingTest.all.find do |test|
      test.student.first_name == student.first_name && test.test_name == test_name
    end

    # If test_to_pass exists...
    if test_to_pass
      test_to_pass.status = "passed"
    elsif
      test_to_pass = BoatingTest.new(student, test_name, "passed", self)
    end
    test_to_pass
  end


  def fail_student(student, test_name)
    test_to_fail = BoatingTest.all.find do |test|
      test.student.first_name == student.first_name && test.test_name == test_name
    end

    # # If test_to_fail exists...
    if test_to_fail
      test_to_fail.status = "failed"
    elsif
      test_to_fail = BoatingTest.new(student, test_name, "failed", self)
    end
    test_to_fail
  end

end
