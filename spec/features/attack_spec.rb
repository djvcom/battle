feature 'Attacking' do
    scenario 'attack player 2' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content 'Dave attacked Mittens'
    end

    scenario 'attack reduces player 2s points' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to_not have_content 'Mittens: 60HP'
      expect(page).to have_content 'Mittens: 50HP'
    end
end
