class CoursesController < ApplicationController
  def section
    @students # Finish this using the info from the dynamic route segment
  end

  def beghtmltue
    @students = Student.fetch(39)
  end

  def pmdev
    @students = Student.fetch(37)
  end

  def amdev
    @students = Student.fetch(36)
  end
end
