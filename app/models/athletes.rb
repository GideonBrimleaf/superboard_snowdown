class Athlete

  attr_reader :id
  attr_accessor :name, :country, :hometown, :sponsor

  def initialize( profile )
    @id = profile['id'].to_i if profile['id']
    @name = profile['name']
    @country = profile['country']
    @hometown = profile['hometown']
    @sponsor = profile['sponsor']
  end

  def save
  end

end
