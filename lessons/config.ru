require './hello.rb'

run Rack::Cascade.new [HelloAPI]