class Bob

  def hey(string)
    case
    when shouting?(string) then "Whoa, chill out!"
    when question?(string) then "Sure."
    when nothing?(string) then "Fine. Be that way!"
    else "Whatever."
    end
  end

  def shouting?(string)
    string == string.upcase && string.match(/[[:alpha:]]/)
  end

  def question?(string)
    string.match(/\?\z/)
  end

  def nothing?(string)
    string.strip.empty?
  end

end
