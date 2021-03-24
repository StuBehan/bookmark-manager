def setup_test_database
  con = PG.connect :dbname => 'bookmark_manager_test'#, 
                      #  :user => 'makers', :password => 'makers'
  con.exec "TRUNCATE bookmarks;"
  con.exec "INSERT INTO bookmarks (url, title) VALUES('http://www.makersacademy.com', 'Makers Academy');"
  con.exec "INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com', 'Destroy ALl Software');"
  con.exec "INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google');"
end