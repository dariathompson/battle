require './app'

feature 'viewing hit points' do
  scenario 'can view opposing players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Daria: 60HP'
  end
end