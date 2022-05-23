as yet unclassified
testId

	self assert: nil equals: label id.
	label id: 42.
	self assert: 42 equals: label id.