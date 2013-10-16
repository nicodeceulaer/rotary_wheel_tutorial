class Sector
  attr_accessor :min_value, :max_value, :mid_value, :sector, :label


  def rad2deg radians
    radians * 180 / Math::PI
  end

  def rad2txt radians
    "%03d°" % rad2deg(radians)
  end

  def to_s
    "#{self.sector} #{self.label}| #{rad2txt self.min_value}, #{rad2txt self.mid_value}, #{rad2txt self.max_value}"
  end

  def  description
    "#{self}"
  end
end