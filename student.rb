require_relative './student.rb'
require_relative './classroom.rb'
require_relative './teacher.rb'

class Student

  attr_reader :name, :student_id
  @@all = []

  def initialize(name, student_id)
    @name, @student_id = name, student_id
    @@all << self
  end

  def self.all
    @@all
  end
  
  def teachers
    #returns an array of all teacher instances who teach classes containing
    #this student
    classes = Classroom.all.select {|classroom| classroom.student == self}
    classes.map {|klass| klass.teacher}
  end
  
  def teacher_names
    #returns an array of names of teachers teaching this students' classes
    self.teachers.map {|teacher| teacher.name}
  end

  def self.pro_student
    #returns an array of student instances that have more than one teacher
  end

end
