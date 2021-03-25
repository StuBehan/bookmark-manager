require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  enable :sessions

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

  post '/delete' do
    Bookmark.delete(params.key('X'))
    redirect '/edit'
  end

  post '/update' do
    session[:update_id] = params.key('Update')
    redirect '/update'
  end

  get '/update' do
    erb :update
  end

  post '/edit' do
    Bookmark.update(session[:update_id], params[:new_title], params[:new_url])
    redirect '/edit'
  end

  run! if app_file == $0
end
