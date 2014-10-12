require 'baddie'

describe Baddie do

	let(:baddie) { Baddie.new }

	it 'should have an array of weapon choices' do
		expect(baddie.weapons.count).to eq (3)
	end

	it 'should randomly choose a weapon' do
		expect(baddie.choice).not_to be nil 
	end
		
end

