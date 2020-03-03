require './app'

feature 'entering names' do
  scenario 'can submit names of players' do
    visit ('/')
    fill_in :player_1_name, with: 'Sophia'
    fill_in :player_2_name, with: 'Daria'
    click_button 'Submit'
    expect(page).to have_content 'Sophia vs. Daria'
  end
end