tests
testUser

	self assert: nil equals: provider user.
	provider user: 'tollerUser'.
	self assert: 'tollerUser' equals: provider user.
	