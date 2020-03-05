
feature 'Testing infrastructure' do
  scenario 'Can see player2 hp' do
    sign_in_and_play
    expect(page).to have_content "Timmy's HP:100"

  end
end
