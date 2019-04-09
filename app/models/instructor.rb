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
    truthy = BoatingTest.all.find do |test|
      test.student.first_name == student.first_name && test.test_name == test_name
    end

    if truthy
      truthy.status = "passed"
    elsif
      truthy = BoatingTest.new(student, test_name, "passed", self)
    end
    truthy
  end


  def fail_student(student, test_name)
    truthy = BoatingTest.all.find do |test|
      test.student.first_name == student.first_name && test.test_name == test_name
    end

    if truthy
      truthy.status = "failed"
    elsif
      truthy = BoatingTest.new(student, test_name, "failed", self)
    end
    truthy
  end

end
