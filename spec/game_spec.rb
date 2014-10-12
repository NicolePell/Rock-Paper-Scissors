require 'game'

describe Game do

	let(:game) {Game.new}
	let(:player) { double :player }
	let(:enemy) { double :enemy }
 
	context 'at the start of the game it' do

		it 'should not have any players' do
			expect(game.players).to eq ([])
		end

		it 'should add a player' do
			game.add(player)
			expect(game.players_count).to eq(1)
		end

		it 'should not let more than two players join' do
			game_1 = 3.times {game.add(player)}
			expect(game.players_count).to eq(2)
		end

		it 'should add an enemy' do
			expect(game.add_enemy(enemy)).to eq(enemy)
		end

		xit 'should determine a winner' do
			allow(player).to receive(:weapon).with('rock')
			allow(enemy).to receive(:choice).with('scissors')
			expect(game.winner).to eq player
		end
	
	end
	
end