class School

  def initialize
    @roster = Hash.new { |h, k| h[k] = [] }
  end

  def add(name, grade)
    @roster[grade].push(name)
  end

  def grade(grade)
    @roster[grade].sort
  end

  def students_by_grade
    @roster.sort_by do |grade, students|
      students.sort!
      grade
    end.to_h
  end

end

module BookKeeping
  VERSION = 2
end
