require 'open-uri'

class Student
  attr_accessor :name, :photo_url, :twitter, :section

  def Student.fetch(course_number)
    url = "http://yearbook-api.herokuapp.com/2013/Spring/#{course_number}.json"

    raw_response = open(url).read
    result = JSON.parse(raw_response)
    list_from_api = result["students"]

    array_of_students = Array.new

    list_from_api.each do |student_hash|
      s = Student.new
      s.twitter = student_hash["twitter"]
      s.photo_url = student_hash["avatar"]
      s.name = student_hash["first_name"] + " " + student_hash["last_name"]
      s.section = result["name"]

      array_of_students << s
    end

    return array_of_students
  end
end
