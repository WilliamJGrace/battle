def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'John')
  fill_in('player2', with: 'Timmy')
  click_button('Submit')
end

def sign_in_and_play_and_attack_player2
  sign_in_and_play
  click_link('Attack')
  click_link('Ok')

end
