require 'open-uri'

class CoursesController < ApplicationController
  def pmdev

  end

  def amdev
    url = "http://yearbook-api.herokuapp.com/2013/Spring/36.json"

    raw_response = open(url).read
    result = JSON.parse(raw_response)
    list_from_api = result["students"]

    @students = Array.new

    list_from_api.each do |student_hash|
      s = Student.new
      s.twitter = student_hash["twitter"]
      s.photo_url = student_hash["avatar"]
      s.name = student_hash["first_name"] + " " + student_hash["last_name"]
      s.section = "AM"

      @students << s
    end
  end
end
