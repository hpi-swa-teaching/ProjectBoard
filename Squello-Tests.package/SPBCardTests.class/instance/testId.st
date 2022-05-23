tests
testId

	self assert: nil equals: card id.
	card id: 42.
	self assert: 42 equals: card id.