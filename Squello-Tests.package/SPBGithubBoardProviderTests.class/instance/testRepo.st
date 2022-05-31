tests
testRepo

	self assert: nil equals: provider repo.
	provider repo: 'tollesRepo'.
	self assert: 'tollesRepo' equals: provider repo.
	