
feature 'Display Hit Points' do
  scenario 'displaying player 2s hit points' do
    visit('/')
    fill_in :player_one_name, with: 'Dave'
    fill_in :player_two_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens - 30'
  end
end
