tests
testTitle

	| title |
	title := 'hi squeak!'.
	
	self assert: nil equals: lane title.
	lane title: title.
	self assert: title equals: lane title.
	self assert: #title equals: (observed at: 1).