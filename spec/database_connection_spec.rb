require 'database_connection'

describe DatabaseConnection do
  describe '#setup' do
    it 'sets up the database connection to the specified database' do
      expect(PG).to receive(:connect).with(:dbname => 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_test')
    end
  end

  describe '#query' do
    it 'takes a string and actions it on the current server' do
      DatabaseConnection.setup('bookmark_manager_test')
      expect(DatabaseConnection.connected).to receive(:exec).with("SELECT * FROM bookmarks")
      DatabaseConnection.query("SELECT * FROM bookmarks")
    end
  end
end