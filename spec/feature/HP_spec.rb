
feature 'HP' do
  scenario 'Can deduct HP' do
    sign_in_and_play_and_attack_player2
    expect(page).to have_content("Timmy's HP:90")


  end
end
