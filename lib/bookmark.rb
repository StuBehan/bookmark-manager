require 'pg'

class Bookmark

  def self.all
    @array = []
    DatabaseConnection.query("SELECT * FROM bookmarks").each do |row|
    @array <<  { :id => row['id'], :url => row['url'], :title => row['title'] }
    end
    return @array
  end

  def self.add(new_url, new_title)
    DatabaseConnection.query("INSERT INTO bookmarks (url, title) VALUES ('#{new_url}', '#{new_title}');")
  end

  def self.delete(id)
    DatabaseConnection.query("DELETE FROM bookmarks WHERE id = #{id};")
  end

  def self.update(id, new_title, new_url)
    DatabaseConnection.query("UPDATE bookmarks SET title = '#{new_title}' WHERE id = '#{id}';") unless new_title == ""
    DatabaseConnection.query("UPDATE bookmarks SET url = '#{new_url}' WHERE id = '#{id}';") unless new_url == ""
  end
end
