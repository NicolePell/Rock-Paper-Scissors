require 'player'

describe Player do

	let(:player) {Player.new('Nicole')}

	it 'should have a name' do
		expect(player.name).to eq 'Nicole'
	end

	it 'should not have a weapon' do
		expect(player.weapon).to eq nil
	end

	it 'should be able to choose a weapon' do
		expect(player.choose('rock')).to eq 'rock'
	end

end