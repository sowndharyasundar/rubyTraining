module Display_SuitsAndCards
	def disp_suits(suits)
		print "Card suits are: " +suits.join(" ")
	end

	def disp_card_per_suit(card_per_suit)
		print "\n\nCard per suits: " +card_per_suit.to_s 
	end

	def disp_valueof_eachcard(card_value)
		print"\n\nValue for each card: "+card_value.to_s+"\n"
	end
end

module Fill_DisplayDeck
	
	def fill_deck
		for @deck_index in 0..51
			@deck.insert(@deck_index,CARD_PER_SUIT.at(@index_card_per_suit))
			deck_element=@deck.at(@deck_index)
			@deck_index+=1
			@index_card_per_suit+=1
			if(deck_element=="King")
				@index_card_per_suit=0
			end
		end
		# print "\nDeck contains:\n"+@deck.to_s
	end

	def display_cards_per_suit(card_suits)
		@card_suits=card_suits
		display_cards=@deck.each_slice(13).to_a
		i=0
		while(i<display_cards.size)
			puts "\nDeck contains below cards in each suit: "
			puts "\n"+@card_suits.at(i) +": "
			print display_cards[i]
			puts "\n" 
			i+=1
		end
	end
end


class SuitsAndCards
include Display_SuitsAndCards
end

class DeckAndPlayers

include Fill_DisplayDeck
	
	def initialize
		@deck=Array.new
		@deck_index=0
		@index_card_per_suit=0
		@hand1=Array.new
		@hand2=Array.new
		@hand1_index=0
		@hand2_index=0
	end
end


card_suits=["Clubs","Diamonds","Hearts","Spades"]
CARD_PER_SUIT=%w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]
card_value=Hash["Ace"=>11,2=>2,3=>3,4=>4,5=>5,6=>6,7=>7,8=>8,9=>9,"Jack"=>10,"Queen"=>10,"King"=>10]

card=SuitsAndCards.new
card.disp_suits(card_suits)
card.disp_card_per_suit(CARD_PER_SUIT)
card.disp_valueof_eachcard(card_value)

deckobj=DeckAndPlayers.new
deckobj.fill_deck
deckobj.display_cards_per_suit(card_suits)
