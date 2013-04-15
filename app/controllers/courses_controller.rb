class CoursesController < ApplicationController
  def amdev
    render({ :text => "<h1>Good Morning! Your lucky number for the day is #{rand(100)}.</h1>"})
  end
end
