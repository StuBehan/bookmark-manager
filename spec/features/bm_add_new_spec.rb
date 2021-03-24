describe BookmarkManager do
  feature 'Add new bookmarks' do
    scenario 'User can add a new bookmark with a title' do
      visit('/')
      click_button('Bookmarks')
      fill_in 'url', with: 'http://www.amazon.co.uk'
      fill_in 'title', with: 'Amazon'
      click_button('Add')
      expect(page).to have_link('Amazon', :href => 'http://www.amazon.co.uk')
    end
  end
end
