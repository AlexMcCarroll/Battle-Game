feature 'enter player names' do
  scenario 'Players can enter their names in a form' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Player 1: Alex and Player 2: Xela'
  end
end
