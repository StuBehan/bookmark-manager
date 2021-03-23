def setup_test_database
  con = PG.connect :dbname => 'bookmark_manager_test', 
                       :user => 'makers', :password => 'makers'
  con.exec "TRUNCATE bookmarks;"
  con.exec "INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');"
  con.exec "INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');"
  con.exec "INSERT INTO bookmarks (url) VALUES('http://www.google.com');"
end