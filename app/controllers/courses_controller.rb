class CoursesController < ApplicationController
  def amdev
    @lucky_number = rand(100)
  end
end
