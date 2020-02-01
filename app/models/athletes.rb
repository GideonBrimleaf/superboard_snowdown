class Athlete

  attr_reader :name, :country, :hometown, :sponsor

  def initialize(name, country, hometown, sponsor)
    @name = name
    @country = country
    @hometown = hometown
    @sponsor = sponsor
  end

end
