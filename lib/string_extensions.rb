class String
  def strip_leading_whitespace
    min_length = self.lines.map {|l| l.index(/\S/)}.min
    pattern = " " * min_length
    self.gsub(%r{^#{pattern}}, "")
  end
end
