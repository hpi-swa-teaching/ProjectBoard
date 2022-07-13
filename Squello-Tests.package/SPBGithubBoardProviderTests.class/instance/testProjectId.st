tests
testProjectId

	self assert: nil equals: provider projectId.
	provider projectId: 1337.
	self assert: 1337 equals: provider projectId.