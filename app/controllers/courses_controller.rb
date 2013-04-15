require 'open-uri'

class CoursesController < ApplicationController
  def pmdev
  end

  def amdev
    url = "http://yearbook-api.herokuapp.com/2013/Spring/36.json"

    raw_response = open(url).read
    @result = JSON.parse(raw_response)
  end
end
