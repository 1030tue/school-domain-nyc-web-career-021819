require 'pry'

class School
  attr_accessor :roster

def initialize(school)
  @school = school
  @roster = {}
end


def add_student(name, grade)
  (@roster[grade] ||=[]) <<name
end

def grade(num)
  @roster[num]
end

def sort
  sorted={}
  @roster.each do |name,grade|
    sorted[grade.sort] = name
end
sorted.sort_by {|key, val| key}.to_h.invert
end

end
