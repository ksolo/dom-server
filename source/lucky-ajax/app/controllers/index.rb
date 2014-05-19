get '/' do
  erb :index
end


# TODO: convert this route to use AJAX
post '/rolls' do
  @roll = Roll.create(value: params[:value])

  if request.xhr?
    # Tell the client the server is responding with JSON
    content_type :json
    # Generate and return the JSON
    # ps. ActiveRecord has a nice #to_json helper to make this easy
    @roll.to_json
  else
    erb :index  # HINT: what does this do? what should we do instead?
  end
end
