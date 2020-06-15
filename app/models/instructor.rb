class Instructor
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self       
    end

    def pass_student(student,test_name)
        
        
        self_teach = BoatingTest.all.select do |test|
            #binding.pry
            test.instructor == self
        end

        stu = self_teach.select do |test|
            test.student == student
        end

        stu.map do |test|
            if test.test_name == test_name
                test.status = 'passed'
            end
        end

        #binding.pry
        
    end

    def fail_student(student,test_name)
        
        self_teach = BoatingTest.all.select do |test|
            #binding.pry
            test.instructor == self && test.student == student
        end

        # stu = self_teach.select do |test|
        #     test.student == student
        # end

        self_teach.map do |test|
            if test.test_name == test_name
                test.status = 'failed'
            end
        end

        #self_teach

        #binding.pry
        
    end

    def self.all
        @@all
    end
end
