feature 'play the game' do 
    before do 
      visit('/')
      fill_in :name, with: 'Paula'
      click_button 'Submit'
    end 
    scenario 'see the options' do 
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end 

    scenario 'player chooses an option' do 
        click_button 'Rock'
        expect(page).to have_content "You selected Rock"
    end 

    scenario 'computer chooses an option' do 
        click_button 'Rock'
        expect(page).to have_content "The computer selected r ock"

    end 

    scenario 'player sees result' do
        expect(page).to have content "You won" 
    end 
end 



  