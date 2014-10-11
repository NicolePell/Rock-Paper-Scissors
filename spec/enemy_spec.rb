require 'enemy'

describe Enemy do

	let(:enemy) { Enemy.new }

	it 'should have an array of weapon choices' do
		expect(enemy.weapons.count).to eq (3)
	end

	it 'should randomly choose a weapon' do
		expect(enemy.choice).not_to be nil 
	end
		
end

