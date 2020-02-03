require_relative '../../db/sql_runner'

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
    sql = 'INSERT INTO athletes
           (name, country, hometown, sponsor)
           VALUES ($1, $2, $3, $4)
           RETURNING id'
    values = [@name, @country, @hometown, @sponsor]
    athlete = SqlRunner.run( sql, values ).first
    @id = athlete['id'].to_i
  end

  def update( profile )
    sql = 'UPDATE ATHLETES SET RETURNING Y'
  end

end
