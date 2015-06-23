require 'active_record'
require 'br_registry_validator'

Dir["./spec/support/**/*.rb"].each {|file| require file }

ActiveRecord::Base.establish_connection :adapter => 'sqlite3', :database => ':memory:'

ActiveRecord::Base.connection.execute('create table "suppliers" ("cnpj" varchar(255) )')
ActiveRecord::Base.connection.execute('create table "customers" ("cpf" varchar(255) )')
