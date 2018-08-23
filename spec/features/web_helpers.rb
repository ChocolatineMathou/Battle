def sign_in_and_play
  visit('/')
  fill_in :player01, with: 'Hagrid'
  fill_in :player02, with: 'Dumbledore'
  click_button 'Submit'
end
