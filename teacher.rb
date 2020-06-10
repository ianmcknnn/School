require_relative './student.rb'
require_relative './classroom.rb'
require_relative './teacher.rb'

class Teacher

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def students
    classes = Classroom.all.select do |classroom|
      classroom.teacher == self
      end
        classes.map do |klass|
          klass.student
        end
  end

  def student_names
      self.students.map do |student|
        student.name
      end
  end

  def self.pro_teacher 
    #we want to find the teacher 
    #who has the most students
      most_students = 0
      best_teacher = nil
      self.all.each do |teacher|
        if teacher.students.length > most_students
          most_students = teacher.students.length 
          best_teacher = teacher
        end
      end
      best_teacher
  end

end

