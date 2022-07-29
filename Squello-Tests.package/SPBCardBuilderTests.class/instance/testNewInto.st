tests
testNewInto

	| dictionary card |
	dictionary := Dictionary newFrom: {'title' -> 'Found a bug'}.
	builder buildNew: dictionary into: ((SPBLane new) pasteup: PasteUpMorph new).
	card := builder card.
	
	self assert: 'Found a bug' equals: card title.
	self assert: 'test' equals: card repo.
	self assert: 3 equals: card issueId.
	self assert: '' equals: card description.
	