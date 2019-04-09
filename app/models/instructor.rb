class Instructor

  attr_reader :name, :student, :test_name
  attr_accessor :status

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student (student, test) #If there is a BoatingTest whose name and student match the values passed in, this
    choosing_status = BoatingTest.all.find do |test|
    if test.student == student && test.test_name == test_name
      test.test_status = "passed"
      return test
      else
       new_test = BoatingTest.new(student, test_name, "passed", self)
       return new_test
     end
  end

  def fail_student(student, test)
    choosing_status = BoatingTest.all.find do |test|
    if test.student == student && test.test_name == test_name
      if test.test_status = "failed"
        return test
       else
         new_test = BoatingTest.new(student, test_name, "failed", self)
         return new_test
     end
   end
  end

end
end

#########

#control+command+g -> change EVERYTHING!!!!
#control+command+d
#control+command+{ or } indents
#google package with brackets
#package draws lines blocks
#React snippets

  ###############################
  # initialize with a name
  # Instructor.all should return all instructors
  # Instructor#pass_student should take in a student instance and test name. If there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
  # Instructor#fail_student should take in a student instance and test name. Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.

  #undefinedMethod attribute -> means no attr
  #to make maths in ruby -> convert to floats
  #to

  #we can't write self.first_name because it would call it on the name of the class (cause it's a class method)
