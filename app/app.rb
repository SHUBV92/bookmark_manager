ENV["RACK_ENV"] ||="development"

require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/partial'
require_relative 'data_mapper_setup'

require_relative 'server'

require_relative 'controllers/links'
require_relative 'controllers/tags'
require_relative 'controllers/users'
require_relative 'controllers/sessions'
require_relative '../lib/send_recover_link.rb'


class BookmarkManager < Sinatra::base
    get '/' do 
     'Hello World'
    end 
    run! if app_file == $0
end 