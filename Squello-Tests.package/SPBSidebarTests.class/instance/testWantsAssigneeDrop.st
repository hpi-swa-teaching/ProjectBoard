as yet unclassified
testWantsAssigneeDrop

	self assert: true equals: (sidebar wantsAssigneeDrop: SPBAssignee new).
	self assert: false equals: (sidebar wantsAssigneeDrop: Morph new).