require 'dm-migrations'
require 'data_mapper'
require 'dm-postgres-adapter'

class User
 # Give the class some database-interaction superpowers
 include DataMapper::Resource

 # Tell the class which columns exist in the student table
 property :id,     Serial
 property :name,   String
end



DataMapper.setup(:default, "postgres://user:password@localhost/sunday_development")
DataMapper::Logger.new($stdout, :debug)
DataMapper.finalize

DataMapper.auto_upgrade!
