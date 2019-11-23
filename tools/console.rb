require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob_student = Student.new("Spongebob")
patrick_student= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

# # a Student (Object), 
# a boating test name (String), 
# a boating test status (String), 
# and an Instructor (Object)

first_spong_krabs = BoatingTest.new(spongebob_student, "first", "passed", krabs)
second_spong_puff = BoatingTest.new(spongebob_student, "second", "failed", puff)
third_patrick_krabs = BoatingTest.new(patrick_student, "third", "passed", krabs)

no_crashing = spongebob_student.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick_student.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick_student.add_boating_test("Power Steering 201", "passed", krabs)

crashing = krabs.add_boating_test(patrick_student, "Don't Crash 101", "pending")


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

