require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' # чтобы не перезапускать sinatra каждый раз
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db" # создаем подключение к БД

# создаем сущьность
class Client < ActiveRecord::Base # < означает, что в нашем классе Client будут все методы ActiveRecord::Base(ActiveRecord - пространство имен, Base - базовый класс в пространстве времен) 

end	

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

 