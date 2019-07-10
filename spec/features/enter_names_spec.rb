
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave :60 HP vs. Mittens :60 HP'
  end
end
