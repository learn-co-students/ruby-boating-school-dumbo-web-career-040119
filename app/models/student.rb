class Student
    
    attr_reader :first_name
    
    @@all = []
    
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(test_name, status, instructor)

     BoatingTest.new(self,test_name,status,instructor)

    end

    def self.find_student(first_name)
        self.all.select do |student|
            student.first_name == first_name
        end
    end

    def grade_percentage
        arr_of_all_students_test = BoatingTest.all.select do |test|     
            test.student == self 
        end
        
        passed_test = arr_of_all_students_test.select do |test|
            #binding.pry
            test.status == 'passed'
        end

        failed_test = arr_of_all_students_test.select do |test|
            #binding.pry
            test.status == 'failed'
        end

        ratio = passed_test.length.to_f / arr_of_all_students_test.length.to_f
        ratio*100 

    def self.all
        @@all
    end
end
