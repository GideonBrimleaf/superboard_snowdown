class Score

  def initialize( results )
    @id = results['id'].to_i if results['id']
    @athlete_id = results['athlete_id'].to_i
    @event_id = results['event_id'].to_i
    @score = results['score'].to_f
  end

end
