class CoursesController < ApplicationController
  def section
    course_number = params[:course_id]
    @students = Student.fetch(course_number)
    @course_title = @students.first.section
  end
end
