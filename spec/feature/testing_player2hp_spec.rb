
feature 'Testing infrastructure' do
  scenario 'Can see player2 hp' do
    visit('/')
    fill_in('player1', with: 'John')
    fill_in('player2', with: 'Timmy')
    click_button('Submit')
    expect(page).to have_content "Timmy's HP:100"

  end
end
