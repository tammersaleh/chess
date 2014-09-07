class PGN
  def initialize(label)
    @label = label
  end

  def column
    @label[0].ord - "a".ord
  end

  def row
    8 - Integer(@label[1])
  end

end
