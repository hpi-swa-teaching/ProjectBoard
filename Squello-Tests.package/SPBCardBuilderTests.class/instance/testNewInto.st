tests
testNewInto

	| dictionary card |
	dictionary := Dictionary newFrom: {'title' -> 'Found a bug'}.
	builder buildNew: dictionary into: ((SPBColumn new) pasteup: PasteUpMorph new).
	card := builder card.
	
	self assert: 'Found a bug' equals: card title.
	self assert: 3 equals: card issueId.
	self assert: '' equals: card description.
	