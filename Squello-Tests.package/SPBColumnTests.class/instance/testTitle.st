tests
testTitle

	| title |
	title := 'hi squeak!'.
	
	self assert: nil equals: column title.
	column title: title.
	self assert: title equals: column title.
	self assert: #title equals: (observed at: 1).