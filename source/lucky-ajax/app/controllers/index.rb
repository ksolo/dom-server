get '/' do
  erb :index
end


# TODO: convert this route to use AJAX
post '/rolls' do
  @roll = Roll.create(value: params[:value])

  if request.xhr?
    erb :_die_roll, layout: false
  else
    erb :index  # HINT: what does this do? what should we do instead?
  end
end
