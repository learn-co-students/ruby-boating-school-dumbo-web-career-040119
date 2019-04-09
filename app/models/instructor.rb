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
    pass_test = BoatingTest.all.select do |boat_test|
                 boat_test.instructor == self
                end
    pass_test.select do |test|
      if test.student == student && test.test_name == test_name
         test.test_status = "passed"
         return test
      else
        new_pass = student.add_boating_test(test.test_name, "passed", self)
        return new_pass

      end
    end
  end

  def fail_student(student, test_name)
    fail_test = BoatingTest.all.select do |boat_test|
                 boat_test.instructor == self
                end
    fail_test.select do |test|
      if test.student == student && test.test_name == test_name
         test.test_status = "failed"
         return test
      else
        new_pass = student.add_boating_test(test.test_name, "failed", self)
        return new_pass

      end
    end
  end




    #if pass_test.student == student.first_name




end
