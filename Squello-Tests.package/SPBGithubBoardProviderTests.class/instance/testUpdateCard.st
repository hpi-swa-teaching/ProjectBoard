tests
testUpdateCard

	| card data |
	card := SPBCard new
		issueId: 2;
		title: 'toller Titel';
		description: 'tolle Description'.
		
	provider updateCard: card.
	
	data := provider api messages first.
	
	self assert: 'toller Titel' equals: (data at: 'title').
	self assert: 'tolle Description' equals: (data at: 'body').
	self assert: 2 equals: (data at: 'number').