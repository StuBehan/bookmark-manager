def setup_test_database
  con = PG.connect :dbname => 'bookmark_manager_test'#, 
                      #  :user => 'makers', :password => 'makers'
  con.exec "TRUNCATE bookmarks;"
  con.exec "INSERT INTO bookmarks (id, url, title) VALUES('1', 'http://www.makersacademy.com', 'Makers Academy');"
  con.exec "INSERT INTO bookmarks (id, url, title) VALUES('2', 'http://www.destroyallsoftware.com', 'Destroy ALl Software');"
  con.exec "INSERT INTO bookmarks (id, url, title) VALUES('3', 'http://www.google.com', 'Google');"
end