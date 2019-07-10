feature 'Attacking' do
    scenario 'attack player 2' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content 'Dave attacked Mittens'
    end

    scenario 'attack reduces player 2s points' do
      sign_in_and_play
      click_link 'Attack'
      player_one = Player.new("Dave")
      player_two = Player.new("Mittens")
      player_one.attack(player_two)
      expect(player_two.hp).to eq 50
    end
end
