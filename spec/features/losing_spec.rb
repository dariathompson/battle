feature 'losing a battle' do
  scenario 'returns losing message if player loses the battle' do
    sign_in_and_play
    10.times do 
      click_link 'Attack!'
      click_link 'OK'
    end
    click_link 'Attack!'
    expect(page).to have_content "Daria lost!"
  end
end