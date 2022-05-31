tests
testProjectID

	self assert: nil equals: provider projectID.
	provider projectID: 1337.
	self assert: 1337 equals: provider projectID.
	