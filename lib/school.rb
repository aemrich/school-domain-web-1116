# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name
    @roster ={}
  end

  def add_student(name, grade)
    roster[grade]||=[]
    roster[grade]<<name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
      reformed_hash ={}
      array = @roster.sort_by {|grade, name| grade}

      array.each do |key, value|
        reformed_hash[key] = value.sort
      end
    reformed_hash
  end
end
