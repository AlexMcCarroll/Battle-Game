feature 'attack' do
  scenario 'Player 1 can attack Player 2' do
    sign_in_and_play
    click_button 'Attack Player 2!'
    expect(page).to have_content 'Alex attacked Xela!'
  end

  scenario 'Player 2 can attack Player 1' do
    sign_in_and_play
    click_button 'Attack Player 1!'
    expect(page).to have_content 'Xela attacked Alex!'
  end
end
