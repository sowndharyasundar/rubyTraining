card_suits=["Clubs","Diamonds","Hearts","Spades"]
CARD_PER_SUIT=%w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]
card_value=Hash["Ace"=>11,2=>2,3=>3,4=>4,5=>5,6=>6,7=>7,8=>8,9=>9,"Jack"=>10,"Queen"=>10,"King"=>10]
deck=Array.new
hand1=Array.new
hand2=Array.new

index_card_per_suit=0
deck_index=0
for deck_index in 0..51
		deck.insert(deck_index,CARD_PER_SUIT.at(index_card_per_suit))
		deck_element=deck.at(deck_index)
		deck_index+=1
		index_card_per_suit+=1
	if(deck_element=="King")
		index_card_per_suit=0
	end
end

display_cards=deck.each_slice(13).to_a
i=0
	while(i<display_cards.size)
		puts card_suits.at(i) +": "
		print display_cards[i]
		puts "\n" 
		i+=1
	end

deck_index=0
hand1_index=0
hand2_index=0

while(hand1_index<3)
	hand1.insert(hand1_index,deck.at(deck_index))
	hand1_index+=1
	deck_index+=1
end
while(hand2_index<3)
	hand2.insert(hand2_index,deck.at(deck_index))
	hand2_index+=1
	deck_index+=1
end
	hand1_index=0
	hand2_index=0

puts "\nHand one contains:\n" 
for hand1_index in 0..hand1.size-1
 	puts hand1.at(hand1_index) +" of " +card_suits.at(index_card_per_suit)
end

puts "\nHand two contains:\n" 
for hand2_index in 0..hand2.size-1
 	puts hand2.at(hand2_index) +" of " +card_suits.at(index_card_per_suit)
end
