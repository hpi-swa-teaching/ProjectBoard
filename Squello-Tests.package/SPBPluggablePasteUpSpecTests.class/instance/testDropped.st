as yet unclassified
testDropped

	| dropped |
	dropped := #drop.
	self assert: nil equals: pasteUpSpec dropped.
	pasteUpSpec dropped: dropped.
	self assert: dropped equals: pasteUpSpec dropped.