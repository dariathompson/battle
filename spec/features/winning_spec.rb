feature 'winning a battle' do
  scenario 'returns winning message if player wins the battle' do
    sign_in_and_play
    10.times do 
      click_link 'Attack!'
      click_link 'OK'
    end
    click_link 'Attack!'
    expect(page).to have_content "Sophia won!"
  end
end