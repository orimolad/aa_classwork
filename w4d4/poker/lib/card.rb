class Card

CARD_SUITS = [♣️, ♥️, ♦️, ♠️]
CARD_VALUE = [:2, :3, :4, :5, :6, :7, :8, :9, :10, :J, :Q, :K, :A]
attr_reader :suit, :value

    def initialize(suit, value) 
        @suit = suit
        @value = value
    end

end
