accessing
rerenderCards

	self cards 
		do: [:each | self pasteup addMorph: each].
	self alignCards.