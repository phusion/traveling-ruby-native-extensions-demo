#!/usr/bin/env ruby
require 'paint'
require 'sqlite3'

db = SQLite3::Database.new("hello.sqlite3")
db.execute("create table if not exists foo (name varchar(255))")
db.execute("insert into foo values ('hello world')")
db.close
puts Paint["Database file modified.", :red]
