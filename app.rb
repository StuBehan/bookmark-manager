require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  post '/add' do
    Bookmark.add(params[:url], params[:title])
    redirect '/bookmarks'
  end

  get '/edit' do
    erb :edit
  end

  post '/edit' do
    Bookmark.delete(params.key('X'))
    redirect '/edit'
  end

  run! if app_file == $0
end
