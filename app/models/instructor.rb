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

  # def pass_student(student, test_name)
  #   test_instance = BoatingTest.all.select do |test|
  #     test.instructor == self
  #   end
  #   test = test_instance.select do |test|
  #       test.student == student
  #       test.test_name == test_name
  #     end
  #
  #     # test.map { |el| el.status = 'passed' }
  #     test.status = "passed"
  #   # teacher.map { |test| test.status = 'passed' }
  #
  # end


  def pass_student(student, test_name)
    test_instance = BoatingTest.all.select do |test|
      test.instructor == self
    end
    test = test_instance.select do |test|
        if test.student == student && test.test_name == test_name
          test.status = 'passed'
          return test
        else
          # test.student = student && test.test_name = test_name && test.status = 'passed'
          new_pass = student.add_boating_test(test_name, "passed", self)
          return new_pass
        end
      end

      # test.map { |el| el.status = 'passed' }
      # test.status = "passed"
    # teacher.map { |test| test.status = 'passed' }
  end

  def fail_student(student, test_name)
    test_instance = BoatingTest.all.select do |test|
      test.instructor == self
    end
    test = test_instance.select do |test|
        if test.student == student && test.test_name == test_name
          test.status = 'failed'
          return test
        else
          # test.student = student && test.test_name = test_name && test.status = 'passed'
          new_pass = student.add_boating_test(test_name, "failed", self)
          return new_pass
        end
      end
  end

end
