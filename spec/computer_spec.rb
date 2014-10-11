require 'computer'

describe Computer do

	let(:computer) { Computer.new }

	it 'should have an array of weapon choices' do
		expect(computer.weapons.count).to eq (3)
	end

	it 'should randomly choose a weapon' do
		expect(computer.choice).not_to be nil 
	end
		
end

