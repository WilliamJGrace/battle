feature 'Testing infrastructure' do
  scenario 'two users can fill in their names and have them display on screen' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Timmy'

  end
end
