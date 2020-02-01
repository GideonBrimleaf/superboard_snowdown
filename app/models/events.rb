class Event

  attr_accessor :competition

  def initialize( info )
    @id = info['id'].to_i if info['id']
    @competition = info['competition']
  end

end
