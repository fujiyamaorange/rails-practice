require 'grape'

class HelloAPI < Grape::API
  format :json

  get '/' do
    {'hello': 'world', 'params': params}
  end

  post '/' do
    body = env['api.request.body']
    return body
  end
end