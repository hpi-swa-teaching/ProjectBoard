accessing
rerenderCards

	self cards 
		do: [:card | self pasteup addMorph: card].
	self alignCards.