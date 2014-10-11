require 'player'

describe Player do

	let(:player) {Player.new('Nicole')}

	it 'should have a name' do
		expect(player.name).to eq 'Nicole'
	end

end