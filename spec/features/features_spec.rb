feature 'Submit names' do

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
      expect(page).to have_content('60HP')
    end

    # As Player 1,
    # So I can win a game of Battle,
    # I want to attack Player 2, and I want to get a confirmation
    scenario 'Attacking Player 2' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content('You attacked')
    end

end
