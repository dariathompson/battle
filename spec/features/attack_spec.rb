feature 'attacking another' do
   scenario 'can attack another player and get confirmation' do
     sign_in_and_play
     click_link 'Attack!'
   expect(page).to have_content 'Sophia attacked Daria'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack!'
    expect(page).not_to have_content 'Daria: 60HP'
    expect(page).to have_content 'Daria: 50HP'
  end
end