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
end

