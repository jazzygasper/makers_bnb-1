class MakersBNB < Sinatra::Base
  get '/new/space' do
    erb :'spaces/new'
  end

  post '/new/space' do
    @space = Space.create(name: params[:name], description: params[:description], price: params[:price])
    redirect ('/spaces')
  end

end
