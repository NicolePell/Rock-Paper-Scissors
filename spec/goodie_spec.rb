require 'goodie'

describe Goodie do

	let(:goodie) {Goodie.new('Nicole')}

	it 'should have a name' do
		expect(goodie.name).to eq 'Nicole'
	end

	it 'should not have a weapon' do
		expect(goodie.weapon).to eq nil
	end

	it 'should be able to choose a weapon' do
		expect(goodie.choose('rock')).to eq 'rock'
	end

end