feature 'attacking another' do
  scenario 'can attack another player and get confirmation' do
    sign_in_and_play
    click_link 'Attack!'
    expect(page).to have_content 'Sophia attacked Daria'
  end
end