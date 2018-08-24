def sign_in_and_play
  visit('/')
  fill_in :player01, with: 'Dumbledore'
  fill_in :player02, with: 'Hagrid'
  click_button 'Submit'
end
