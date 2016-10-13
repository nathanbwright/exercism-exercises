class Robot
  attr_accessor :name

  @@robot_names = []

  def initialize
    name_robot
  end

  def name_robot
    new_name = letter_set + number_set
    while @@robot_names.include?(new_name) do
      new_name = letter_set + number_set
    end
    @name = new_name
    @@robot_names << new_name
  end

  def reset
    @@robot_names.delete(@name)
    name_robot
  end

  def letter_set
    2.times.inject("") do |total, letter|
      total + ('A'..'Z').to_a.shuffle[0]
    end
  end

  def number_set
    3.times.inject("") do |total, number|
      total + (1..9).to_a.shuffle[0].to_s
    end
  end

end
