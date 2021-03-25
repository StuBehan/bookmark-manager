describe BookmarkManager do
  feature 'Update existing bookmark' do
    scenario 'User can update a bookmark' do
      visit('/')
      click_button('Bookmarks')
      click_button('Edit Bookmarks')
      click_button('update1')
      fill_in('new_title', with: 'Makers')
      click_button('Save changes')
      expect(page).to have_content('Makers')
      expect(page).to_not have_content('Makers Academy')
    end
  end
end
