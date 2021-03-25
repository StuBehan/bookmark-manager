describe BookmarkManager do
  feature 'Delete existing bookmark' do
    scenario 'User can delete a bookmark' do
      visit('/')
      click_button('Bookmarks')
      click_button('Edit Bookmarks')
      click_button('delete1')
      expect(page).to_not have_content('Makers Academy')
    end
  end
end
