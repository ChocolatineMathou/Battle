feature 'Features - Battle' do

  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  scenario 'players enter their names' do
    sign_in_and_play
    expect(page).to have_content('Hagrid', 'Dumbledore')
  end

    # As Player 1,
    # So I can see how close I am to winning
    # I want to see Player 2's Hit Points
    scenario 'Viewing hit points' do
      sign_in_and_play
      expect(page).to have_content('Dumbledore: 60HP')
    end

    # As Player 1,
    # So I can win a game of Battle,
    # I want to attack Player 2, and I want to get a confirmation
    scenario 'Attacking Player 2' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content('attacked')
    end

    # As Player 1,
    # So I can start to win a game of Battle,
    # I want my attack to reduce Player 2's HP by 10
    scenario 'Reduce Player\'s HP by 10' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).not_to have_content('Dumbledore: 60HP')
      expect(page).to have_content('Dumbledore: 50HP')
    end

    # As two Players,
    # So we can continue our game of Battle,
    # We want to switch turns
    scenario 'We want to switch turns' do
      sign_in_and_play
      click_button 'Attack'
      #expect(page).not_to have_content('Dumbledore: 60HP')
      expect(page).to have_content('Dumbledore: 50HP')
      click_button 'Return'
      click_button 'Attack'
      expect(page).not_to have_content('Hagrid: 60HP')
      expect(page).to have_content('Hagrid: 50HP')
    end

end
