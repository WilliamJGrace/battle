feature 'Testing infrastructure' do
  scenario 'two users can fill in their names and have them display on screen' do
    visit('/')
    fill_in('player1', with: 'John')
    fill_in('player2', with: 'Timmy')
    click_button('Submit')

    expect(page).to have_content 'John vs. Timmy'

  end
end
