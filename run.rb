require_relative './student.rb'
require_relative './classroom.rb'
require_relative './teacher.rb'

jr = Student.new("JR", "1234")
paul = Teacher.new("Paul Nicholsen")
class1 = Classroom.new(paul, jr)

puts jr.teacher_names == [paul.name]
puts Student.pro_student
