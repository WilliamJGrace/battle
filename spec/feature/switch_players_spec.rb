
feature 'Switch players' do
  scenario 'player1 turn' do
    sign_in_and_play
    expect(page).to have_content("John's turn")


  end
  scenario 'player2 turn after player 1' do
    sign_in_and_play_and_attack_player2

    expect(page).to have_content("Timmy's turn")






  end
end
