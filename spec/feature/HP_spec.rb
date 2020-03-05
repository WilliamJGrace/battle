
feature 'HP' do
  scenario 'Can deduct HP' do
    sign_in_and_play
    click_link('Attack')
    click_link('Ok')
    expect(page).to have_content("Timmy's HP:90")


  end
end
