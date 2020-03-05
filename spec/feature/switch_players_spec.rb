
feature 'Switch players' do
  scenario 'player1 turn' do
    sign_in_and_play
    expect(page).to have_content("John's turn")


  end
  scenario 'player2 turn after player 1' do
    sign_in_and_play
    click_link('Attack')
    click_link('Ok')
    expect(page).to have_content("Timmy's turn")






  end
end
