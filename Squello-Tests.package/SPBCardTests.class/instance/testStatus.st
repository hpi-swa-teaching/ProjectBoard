tests
testStatus

	card isClosed: false.
	self assert: card statusModel text equals: 'Open'.
	card toggleClosed.
	self assert: card isClosed.
	self assert: card statusModel text equals: 'Closed'.
	
	card isNote: true.
	self assert: card statusModel text equals: 'Note'.