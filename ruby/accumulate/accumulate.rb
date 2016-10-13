class Array
  def accumulate
    result = []
    self.each do |item|
      result << yield(item)
    end
    result
  end
end
