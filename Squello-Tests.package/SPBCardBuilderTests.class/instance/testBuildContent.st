tests
testBuildContent

	| remote card |
	remote := 'https://api.github.com/repos/test/test/issues/3'.
	builder card: SPBCard new.
	builder buildContent: remote.
	card := builder card.
	
	self assert: 'Found a bug' equals: card title.
	self assert: 'test' equals: card repo.
	self assert: 3 equals: card issueId.
	self assert: '' equals: card description.
	