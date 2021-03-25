class DatabaseConnection

  def self.connected
    @connected
  end
  
  def self.setup(dbname)
    @connected = PG.connect :dbname => dbname
  end

  def self.query(query)
    @connected.exec query
  end

  def self.check_env
    if ENV['ENVIRONMENT'] == 'test'
      self.setup('bookmark_manager_test') # , 
                      #  :user => 'makers', :password => 'makers'
    else
      self.setup('bookmark_manager') # , 
                      #  :user => 'makers', :password => 'makers'
    end
  end
end