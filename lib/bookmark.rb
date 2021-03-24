require 'pg'

class Bookmark

  def self.all
    @array = []
    rs = self.check_env.exec "SELECT * FROM bookmarks"
    rs.each do |row|
    @array <<  { :url => row['url'], :title => row['title'] }
    end
    return @array
  end

  def self.add(new_url, new_title)
    rs = self.check_env.exec "INSERT INTO bookmarks (url, title) VALUES ('#{new_url}', '#{new_title}');"
  end

  private

  def self.check_env
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test' # , 
                      #  :user => 'makers', :password => 'makers'
    else
      con = PG.connect :dbname => 'bookmark_manager' # , 
                      #  :user => 'makers', :password => 'makers'
    end
  end
end
