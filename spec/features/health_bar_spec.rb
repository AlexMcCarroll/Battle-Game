feature 'display health bar' do
  scenario 'Player 1 can see Player 2 health bar' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Alex has 5 lives left'
    expect(page).to have_content 'Xela has 5 lives left'
  end
end
