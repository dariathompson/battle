feature 'switching turns' do
  scenario 'it turns to player2' do
    sign_in_and_play
    click_link 'Attack!'
    click_link 'OK'
    click_link 'Attack!'
    click_link 'OK'
    expect(page).to have_content 'Sophia: 50HP'
  end
end
