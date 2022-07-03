as yet unclassified
testWantsLabelDrop

	self assert: true equals: (board wantsLabelDrop: SPBLabel new).
	self assert: false equals: (board wantsLabelDrop: Morph new)