require 'poker'
require 'rspec'

describe Card do
    let(:card) { Card.new("spades", 3) }
    describe "#initialize" do
        it "initializes with a suit and a value" do
            expect(card.suit).to eq("spades")
            expect(card.value).to eq(3)
        end
    end
end

describe Deck do
    let(:deck) {Deck.new}
    describe '#initialize' do
        it 'initialized with ......' do
        expect(@cards.length).to eq(52)
        end
    end
end