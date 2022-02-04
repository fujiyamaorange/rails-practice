require './hello.rb'
require './users.rb'

# run Rack::Cascade.new [HelloAPI]
run Rack::Cascade.new [Main]