require 'game'

describe Game do

	let(:game) {Game.new(goodie, baddie)}
	let(:goodie) { double :goodie, name: 'Goodie' }
	let(:baddie) { double :baddie, name: 'Baddie' }
 
	context 'at the start of the game it' do

		it 'should not have any players' do
			expect(game.players).to eq ([])
		end

		it 'should add a player' do
			game.add(goodie)
			expect(game.players_count).to eq(1)
		end

		it 'should not let more than two players join' do
			game_1 = 3.times {game.add(goodie)}
			expect(game.players_count).to eq(2)
		end

		it 'should determine a winner if rock && scissors' do
			allow(goodie).to receive(:weapon).and_return 'rock'
			allow(baddie).to receive(:weapon).and_return 'scissors'
			expect(game.winner).to eq goodie
		end

		it 'should determine a winner if paper && rock' do
			allow(goodie).to receive(:weapon).and_return 'rock'
			allow(baddie).to receive(:weapon).and_return 'paper'
			expect(game.winner).to eq baddie
		end

	it 'should determine a winner if scissors && paper' do
			allow(goodie).to receive(:weapon).and_return 'scissors'
			allow(baddie).to receive(:weapon).and_return 'paper'
			expect(game.winner).to eq goodie
		end
	end
end