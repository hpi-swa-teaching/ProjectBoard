as yet unclassified
testWantsLabelDrop

	self assert: true equals: (sidebar wantsLabelDrop: SPBLabel new).
	self assert: false equals: (sidebar wantsLabelDrop: Morph new).