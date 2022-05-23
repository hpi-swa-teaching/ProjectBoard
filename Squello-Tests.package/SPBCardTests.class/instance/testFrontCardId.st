tests
testFrontCardId

	self assert: nil equals: card frontCardId.
	card frontCardId: 42.
	self assert: 42 equals: card frontCardId.