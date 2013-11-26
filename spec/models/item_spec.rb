require 'spec_helper'
describe Item do 
    it {should validate_presence_of :name}

		it { should belong_to :menu}	

		it { should allow_mass_assignment_of :name }
		it { should allow_mass_assignment_of :price }
		it { should allow_mass_assignment_of :menu_id }

		context 'handles price inputs' do

			it 'should convert dollars in string form to integer' do
				item = Item.create name: 'tester', price: '$4.35'
				expect(item.price).to eq 435
			end


		end
end
 