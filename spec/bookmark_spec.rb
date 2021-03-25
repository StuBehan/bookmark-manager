require 'bookmark'

describe Bookmark do
  it 'returns a list of bookmarks' do
    expect(Bookmark.all.last).to include( :title => 'Google', :url => 'http://www.google.com' )
  end

  it 'adds a new bookmark to the list' do
    Bookmark.add('http://www.amazon.co.uk', 'Amazon')
    expect(Bookmark.all.last).to include( :title => 'Amazon', :url => 'http://www.amazon.co.uk' )
  end

  it 'deleted a specified bookmark from the list' do
    Bookmark.delete('1')
    expect(Bookmark.all.all? { |hash| hash[:id] != "1" }).to eq true
  end
end
