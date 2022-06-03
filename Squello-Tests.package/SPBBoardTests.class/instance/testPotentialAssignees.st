as yet unclassified
testPotentialAssignees

	| assignees |
	
	self assert: 2 equals: board potentialAssignees size.
	self assert: 'user1' equals: ((board potentialAssignees at: 1) asString).
	self assert: 'user2' equals: ((board potentialAssignees at: 2) asString).
		
	assignees := OrderedCollection newFrom: {SPBAssignee new}.
	board potentialAssignees: assignees.
	
	self assert: assignees equals: board potentialAssignees.