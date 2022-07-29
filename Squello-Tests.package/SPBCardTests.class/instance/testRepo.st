tests
testRepo

	| repo |
	repo := 'fancy-testing-repo'.
	self assert: nil equals: card repo.
	card repo: repo.
	self assert: repo equals: card repo.