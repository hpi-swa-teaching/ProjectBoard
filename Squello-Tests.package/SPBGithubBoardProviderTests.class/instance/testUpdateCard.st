tests
testUpdateCard

	| card response |
	card := SPBCard new
		issueId: 2;
		title: 'toller Titel';
		description: 'tolle Description'.
		
	response := provider updateCard: card.
	
	self assert: 'toller Titel' equals: (response at: 'title').
	self assert: 'tolle Description' equals: (response at: 'body').
	self assert: 2 equals: (response at: 'number').
	
	