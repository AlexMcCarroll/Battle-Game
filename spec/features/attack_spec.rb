feature 'Attack' do
  scenario 'reduce Player 2 HP by 1' do
    sign_in_and_play
    click_button 'Attack Player 2!'
    click_button 'Continue'
    expect(page).not_to have_content 'Player 2 has 5 lives left'
    expect(page).to have_content 'Player 2 has 4 lives left'
  end
end
