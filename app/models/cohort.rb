class Cohort < ActiveRecord::Base
    has_many :students

    def add_student(name, age)
        student = Student.create(name: name, age: age)
        student.cohort_id = self.id
        student.save
    end

    def average_age
        self.students.average(:age).to_f
    end

    def total_students
        self.students.count
    end

    def self.biggest
        array = self.all.map {|c| c.students.count}
        idx = array.index(array.max())
        cohort = self.all[idx]
        cohort
    end

    def self.sort_by_mod
        self.order(:current_mod)
    end
end