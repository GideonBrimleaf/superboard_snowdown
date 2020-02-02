require 'pg'

def setup_test_database!
  p 'Setting up test database...'
  connection = PG.connect({ dbname: 'superboard_snowdown_dev', host: 'localhost' })
  connection.exec("TRUNCATE scores RESTART IDENTITY CASCADE;")
  connection.exec("TRUNCATE athletes RESTART IDENTITY CASCADE;")
  connection.exec("TRUNCATE events RESTART IDENTITY CASCADE;")
end
