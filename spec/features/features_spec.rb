feature 'Features - Battle' do

  scenario 'players enter their names' do
    sign_in_and_play
    expect(page).to have_content('Hagrid', 'Dumbledore')
  end

  scenario 'See player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Dumbledore: 60HP')
  end

  scenario 'See player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content('Hagrid: 60HP')
  end

  scenario 'Attacking Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('attacked')
  end

  scenario 'Reduce Player\'s HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content('Dumbledore: 60HP')
    expect(page).to have_content('Dumbledore: 50HP')
  end

  scenario 'We want to switch turns' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content('Dumbledore: 60HP')
    expect(page).to have_content('Dumbledore: 50HP')
    click_button 'Return'
    click_button 'Attack'
    expect(page).not_to have_content('Hagrid: 60HP')
    expect(page).to have_content('Hagrid: 50HP')
  end

end
