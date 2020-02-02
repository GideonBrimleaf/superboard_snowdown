require('pg')

class SqlRunner

  def self.run( sql, values = [] )
    begin
      if ENV['ENVIRONMENT'] == 'test'
        db = PG.connect({ dbname: 'superboard_snowdown_dev', host: 'localhost' })
      else
        db = PG.connect({ dbname: 'superboard_snowdown', host: 'localhost' })
      end
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close() if db != nil
    end
    return result
  end

end
