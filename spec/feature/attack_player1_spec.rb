
feature 'Attacks' do
  scenario 'Can attack player 2' do
    sign_in_and_play_and_attack_player2
    click_button('Attack')
    click_link('Ok')
    expect(page).to have_content("John's HP:90")



  end
end
