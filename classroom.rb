require_relative './student.rb'
require_relative './classroom.rb'
require_relative './teacher.rb'

class Classroom

  attr_reader :teacher, :student
  @@all = []

  def initialize(teacher, student)
    @teacher, @student = teacher, student
    @@all << self
  end

  def self.all
    @@all
  end
end
