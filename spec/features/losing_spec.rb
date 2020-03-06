feature 'losing a battle' do
  scenario 'returns losing message if player loses the battle' do
    sign_in_and_play
    11.times do 
      click_link 'Attack!'
      click_link 'OK'
    end
    expect(page).to have_content "Daria lost!"
  end
end