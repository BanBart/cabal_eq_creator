require 'rails_helper'

RSpec.describe Weapon, type: :model do
	it 'has a valid factory' do 
		expect(build(:weapon)).to be_valid
	end

	let(:weapon){ build(:weapon)}

  describe 'validations' do 
  	it { expect(weapon).to validate_presence_of(:name) }
  end
end
