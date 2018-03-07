feature 'Testing infrastructure' do
  # scenario 'Can run app and check page content' do
  # visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'Players can enter their names in a form' do
    visit('/')
    fill_in 'player1', with: 'Alex'
    fill_in 'player2', with: 'Xela'
    click_button 'Prepare for battle!'
    expect(page).to have_content 'Player 1: Alex and Player 2: Xela'
  end
end
