describe BookmarkManager do
  feature 'Add new bookmarks' do
    scenario 'User can add a new bookmark' do
      visit('/')
      click_button('Bookmarks')
      fill_in 'url', with: 'http://www.amazon.co.uk'
      click_button('Add')
      expect(page).to have_content('http://www.amazon.co.uk')
    end
  end
end
