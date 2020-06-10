require_relative './student.rb'
require_relative './classroom.rb'
require_relative './teacher.rb'

require 'pry'

jr = Student.new("JR", "1234")
ian = Student.new("Ian", "2345")

paul = Teacher.new("Paul Nicholsen")
shannon = Teacher.new("Shannon Nabors")

class1 = Classroom.new(paul, jr)
class2 = Classroom.new(shannon, jr)
class3 = Classroom.new(paul, ian)

# puts jr.teacher_names == [paul.name]
# print Student.pro_student == [jr]

# print paul.students
# print paul.student_names

print Teacher.pro_teacher == paul
# binding.pry
