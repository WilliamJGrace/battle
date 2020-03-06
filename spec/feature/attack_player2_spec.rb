
feature 'Attacks' do
  scenario 'Can attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("John attacked Timmy")


  end
end
