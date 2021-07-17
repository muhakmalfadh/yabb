require 'sinatra'

get '/messages/:name' do
    name = params['name']
    color = params['color'] ? params['color'] : 'Biru'
    "<h1>#{name} #{color}</h1>"
end