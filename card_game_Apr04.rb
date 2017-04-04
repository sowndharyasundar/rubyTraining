card_suits=["Clubs","Diamonds","Hearts","Spades"]
card_per_suit=%w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]
card_values=%w[11 2 3 4 5 6 7 8 9 10 10 10 10]
deck=Array.new
hand1=Array.new
hand2=Array.new

index_card_per_suit=0
deck_index=0
for deck_index in 0..51
		deck.insert(deck_index,card_per_suit.at(index_card_per_suit))
		deck_element=deck.at(deck_index)
		deck_index+=1
		index_card_per_suit+=1
	if(deck_element=="King")
		index_card_per_suit=0
	end
end
puts deck