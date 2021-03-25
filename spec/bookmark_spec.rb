require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      expect(Bookmark.all.last).to include( :title => 'Google', :url => 'http://www.google.com' )
    end
  end
  
  describe '.add' do
    it 'adds a new bookmark to the list' do
      Bookmark.add('http://www.amazon.co.uk', 'Amazon')
      expect(Bookmark.all.last).to include( :title => 'Amazon', :url => 'http://www.amazon.co.uk' )
    end
  end
  
  describe '.delete' do
    it 'deleted a specified bookmark from the list' do
      Bookmark.delete('1')
      expect(Bookmark.all.all? { |hash| hash[:id] != "1" }).to eq true
    end
  end
  
  describe '.update' do
    it 'updates the title of a specified bookmark from the list' do
      Bookmark.update('1', 'Makers', '')
      expect(Bookmark.all.last).to include( :id => '1', :title => 'Makers', :url => 'http://www.makersacademy.com')
    end

    it 'updates the URL for a specified bookmark from the list' do
      Bookmark.update('1', '', 'http://www.medium.com')
      expect(Bookmark.all.last).to include( :id => '1', :title => 'Makers Academy', :url => 'http://www.medium.com')
    end

    it 'updates the title and URL for a specified bookmark from the list' do
      Bookmark.update('1', 'Medium', 'http://www.medium.com')
      expect(Bookmark.all.last).to include( :id => '1', :title => 'Medium', :url => 'http://www.medium.com')
    end
  end
end
