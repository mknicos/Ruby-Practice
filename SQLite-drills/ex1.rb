#!/usr/bin/ruby

require 'sqlite3'

begin

  db = SQLite3::Database.new "spencer.db"
  db.execute "CREATE TABLE Friends (id INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT)"
  db.execute "INSERT INTO Friends(Name) VALUES ('Tom')"
  db.execute "INSERT INTO Friends(Name) VALUES ('Rebecca')"
  db.execute "INSERT INTO Friends(Name) VALUES ('Jim')"

  id = db.last_insert_row_id
  puts "The last row's id was #{id}"

rescue SQLite3::Exception => e

  puts "Exception occured"
  puts e


ensure
  db.close if db
end

