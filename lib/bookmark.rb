require 'pg'

class Bookmark

  def self.all
    @array = []
    con = PG.connect :dbname => 'bookmark_manager', :user => 'makers', :password => 'makers'

    rs = con.exec "SELECT * FROM bookmarks"

    rs.each do |row|
      @array << row['url']
    end
    return @array
  end
end
