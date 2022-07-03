as yet unclassified
testWantsAssigneeDrop

	self assert: true equals: (board wantsAssigneeDrop: SPBAssignee new).
	self assert: false equals: (board wantsAssigneeDrop: Morph new)