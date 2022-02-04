require 'grape'

class HelloAPI < Grape::API
  format :json

  get '/' do
    headers = headers['X-Account-Id']
    { headers: headers, params: params }
  end

  # queryパラメータ
  get '/query' do
    query = params[:name]
    return { query: query }
  end
  
  # pathパラメータ
  get 'users/:user_id' do
    user_id = params[:user_id]
    return { user_id: user_id }
  end

  post '/' do
    body = env['api.request.body']
    return body
  end
end