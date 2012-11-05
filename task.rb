#File: task.rb
require "active_record"

#Adapter for the SQLite3
ActiveRecord::Base::establish_connection(:adapter => "sqlite3" ,:database => "taskdb.sqlite" )

class TasksTableScript < ActiveRecord::Migration
    def self.up
        create_table :tasks do |t|
   	    t.string :task	
            t.string :due_date
            t.string :complete 
    end
end

    def self.down
        drop_table :tasks
        end
    end

#Create the table that will be used in the database
TasksTableScript.up
    class Task < ActiveRecord::Base
end
