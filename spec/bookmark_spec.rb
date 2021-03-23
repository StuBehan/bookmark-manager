require 'bookmark'

describe Bookmark do
  it 'returns a list of bookmarks' do
    expect(Bookmark.all).to include('http://www.google.com')
  end

end
