require 'bookmark'

describe Bookmark do
  it 'returns a list of bookmarks' do
    expect(Bookmark.all).to include( { :title => 'Google', :url => 'http://www.google.com' } )
  end

  it 'adds a new bookmark to the list' do
    Bookmark.add('http://www.amazon.co.uk', 'Amazon')
    expect(Bookmark.all).to include( { :title => 'Amazon', :url => 'http://www.amazon.co.uk' } )
  end
end
