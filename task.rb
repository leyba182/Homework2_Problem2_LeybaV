#File: test1.rb
require "active_record"

#Adapter for the SQLite3
ActiveRecord::Base::establish_connection(:adapter => "sqlite3", :database => "taskdb.sqlite")

#Define database schema , and create database "people"
class TaskTableScript < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :task	
      t.string :due_date
      t.string :complete 
   end
end

def self.down
  drop_table :people
end
end

#Create the table that will be used in the database
TaskTableScript.up
class Person < ActiveRecord::Base
end
