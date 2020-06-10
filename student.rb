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
    Classroom.all.select {|classroom| classroom.student == self}
  end


end
