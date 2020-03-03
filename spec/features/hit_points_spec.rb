require './app'

feature 'viewing hit points' do
  scenario 'can view opposing players hit points' do
    visit ('/')
    fill_in :player_1_name, with: 'Sophia'
    fill_in :player_2_name, with: 'Daria'
    click_button 'Submit'
    expect(page).to have_content 'Daria: 60HP'
  end
end