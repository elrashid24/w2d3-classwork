require_relative '../lib/cards.rb'
# ♣️ 2     ♣️ 3     ♣️ 4     ♣️ 5     ♣️ 6     ♣️ 7     ♣️ 8     ♣️ 9     ♣️ 10    ♣️ J     ♣️ Q     ♣️ K     ♣️ A
# ♦️ 2     ♦️ 3     ♦️ 4     ♦️ 5     ♦️ 6     ♦️ 7     ♦️ 8     ♦️ 9     ♦️ 10    ♦️ J     ♦️ Q     ♦️ K     ♦️ A
# ♥️ 2     ♥️ 3     ♥️ 4     ♥️ 5     ♥️ 6     ♥️ 7     ♥️ 8     ♥️ 9     ♥️ 10    ♥️ J     ♥️ Q     ♥️ K     ♥️ A
# ♠️ 2     ♠️ 3     ♠️ 4     ♠️ 5     ♠️ 6     ♠️ 7     ♠️ 8     ♠️ 9     ♠️ 10    ♠️ J     ♠️ Q     ♠️ K     ♠️ A

RSpec.describe Card do
  describe '#initialize' do
    let(:sute) {0}
    let(:rank) {0}
    let(:value) {1}
    subject(:card) { Card.new(sute,rank,value) } 

    it 'is a card' do
      expect(card.value).to eq(1)
    end
  end
end

RSpec.describe Deck do
  describe '#initialize' do
    subject(:deck) { Deck.new } 

    it 'initializes with 52 cards' do
      expect(deck.count).to eq(52)
    end
  end
end