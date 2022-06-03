as yet unclassified
testWantsAssigneeDrop

	self assert: false equals: (board wantsAssigneeDrop: Object new).
	self assert: true equals: (board wantsAssigneeDrop: SPBAssignee new).