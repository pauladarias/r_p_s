feature 'enter name' do
    scenario "Submitting name and welcome message" do
      visit('/')
      fill_in :name, with: 'Paula'
      click_button 'Submit'
      expect(page).to have_content 'Welcome to the game Paula'
    end
end

