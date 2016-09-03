require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("meditation_log.db")
# db.results_as_hash = true

create_log = <<-SQLQUOTE
  CREATE TABLE IF NOT EXISTS meditations(
    id INTEGER PRIMARY KEY,
    day DATE,
    type VARCHAR(255),
    mood INTEGER
  )
SQLQUOTE

db.execute(create_log)

today = 

def log_med(db, day, type, mood)
  db.execute("INSERT INTO meditations (day, type, mood) VALUES (DAET) ")


end

