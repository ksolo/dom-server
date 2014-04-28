get '/' do
  erb :index
end


# TODO: convert this route to use AJAX
post '/rolls' do
  @roll = Roll.create(value: params[:value])

  erb :index  # HINT: what does this do? what should we do instead?
end
