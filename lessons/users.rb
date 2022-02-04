require 'grape'

class Main < Grape::API
  format :json

  # mock
  fujimura = {id: 1, name: 'fujimura', age: 21}
  kaito = {id: 2, name: 'kaito', age: 22}
  users = [fujimura, kaito]

  get '/users' do
    name = params[:name].present? ? params[:name] : ''
    status 200

    return users.filter{|user| user[:name].include? name}
  end

  get '/users/:user_id' do
    user_id = params[:user_id]
    user = users.find{|user| user[:id] == user_id.to_i}

    if user.present?
      status 200
      return user
    else
      status 404
      return {message: "Not Fount User #{user_id}"}
    end
  end

  post '/users' do
    body = env['api.request.body'].symbolize_keys

    if body[:name].present? && body[:age].present?
      body[:id] = users.map{|user| user[:id]}.max + 1

      new_user = {
        "id": body[:id],
        "name": body[:name],
        "age": body[:age]
      }
      # user.push(new_user)
      users << new_user
      status 201
      return new_user
    else
      status 400
      return {message: "'name' and 'age' must be included in body."}
    end
  end

  patch '/users/:user_id' do
    user_id = params[:user_id]
    body = env['api.request.body']

    user = users.find{|user| user.id == user_id.to_i}
    if user.nil?
      status 404
      return {message: "User Not Found Id #{user_id}"}
    end

    user[:name] = body[:name] if body[:name].present?
    user[:age] = body[:age] if body[:age].present?
    status 200
    return user
  end

  delete '/users/:user_id' do
    user_id = params[:user_id]
    
    user = users.find{|user| user.id == user_id.to_i}
    
    if user.nil?
      status 404
      return {message: "User Not Found Id #{user_id}"}
    end

    # 中身が偽である要素を残す→真である要素を削除する
    user.reject! {|user| user.id == user_id.to_i}

    status 204
    return {}
  end
  
end