require 'spec_helper'

feature 'Item' do

	let!(:menu){ Menu.create name: 'cool menu' }

	context 'Create item' do
		it 'Appends item to current list of menu item' do
			visit root_path
			click_on menu.name
			fill_in 'Name', with: 'cool item, man'
			fill_in 'Price', with: '$4.56'
			click_on 'Create Item'
      expect(page).to have_content('cool item, man')
      expect(page).to have_content('$4.56')
		end

	end

end