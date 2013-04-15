class CoursesController < ApplicationController
  def pmdev

  end

  def amdev
    @lucky_number = rand(100)
  end
end
