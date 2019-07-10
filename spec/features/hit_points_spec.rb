
feature 'Display Hit Points' do
  scenario 'displaying player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens :60 HP'
  end
end
