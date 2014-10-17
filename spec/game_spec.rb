require 'game'

describe Game do

	let(:game) {Game.new(goodie, baddie)}
	let(:goodie) { double :goodie, name: 'Goodie' }
	let(:baddie) { double :baddie, name: 'Baddie' }
 
	context 'at the start of the game it' do

		it 'should initialise with a human player' do
			expect(game.goodie).to eq goodie
		end

		it 'shoud initialize with a computer player' do
			expect(game.baddie).to eq baddie
		end

		it 'should know when the game is a draw' do
			expect(game.winner(:rock, :rock)).to eq "Draw"
		end

		it 'should know when the game is a draw' do
			expect(game.winner(:paper, :paper)).to eq "Draw"
		end

		it 'should know when the game is a draw' do
			expect(game.winner(:scissors, :scissors)).to eq "Draw"
		end


		it 'should know the winner between rock and scissors' do
			allow(goodie).to receive(:weapon).and_return :rock
			allow(baddie).to receive(:weapon).and_return :scissors
			expect(game.winner(:rock, :scissors)).to eq "Goodie wins"
		end

		it 'should know the winner between scissors and rock' do
			allow(goodie).to receive(:weapon).and_return :scissors
			allow(baddie).to receive(:weapon).and_return :rock
			expect(game.winner(:scissors, :rock)).to eq "Baddie wins"
		end

		it 'should determine a winner if paper and rock' do
			allow(goodie).to receive(:weapon).and_return :rock
			allow(baddie).to receive(:weapon).and_return :paper
			expect(game.winner(:rock, :paper)).to eq "Baddie wins"
		end

		it 'should determine a winner if rock and paper' do
			allow(goodie).to receive(:weapon).and_return :paper
			allow(baddie).to receive(:weapon).and_return :rock
			expect(game.winner(:paper, :rock)).to eq "Goodie wins"
		end

		it 'should determine a winner if scissors and paper' do
			allow(goodie).to receive(:weapon).and_return :scissors
			allow(baddie).to receive(:weapon).and_return :paper
			expect(game.winner(:scissors, :paper)).to eq "Goodie wins"
		end

		it 'should determine a winner if paper and scissors' do
			allow(goodie).to receive(:weapon).and_return :paper
			allow(baddie).to receive(:weapon).and_return :scissors
			expect(game.winner(:paper, :scissors)).to eq "Baddie wins"
		end

	end
end