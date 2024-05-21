tests
testUpdateNote

	| card data |
	card := SPBCard new
		id: 42;
		title: 'Das ist eine Note';
		isNote: true.
		
	provider updateCard: card.
	
	data := provider api messages first.
	
	self assert: 'Das ist eine Note' equals: (data at: 'note').
	self assert: 42 equals: (data at: 'id').