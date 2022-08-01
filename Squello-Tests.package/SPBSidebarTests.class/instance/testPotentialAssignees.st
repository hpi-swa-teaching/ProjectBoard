as yet unclassified
testPotentialAssignees

	| assignees |
	
	self assert: 2 equals: sidebar potentialAssignees size.
	self assert: 'user1' equals: ((sidebar potentialAssignees at: 1) asString).
	self assert: 'user2' equals: ((sidebar potentialAssignees at: 2) asString).
		
	assignees := OrderedCollection newFrom: {SPBAssignee new}.
	sidebar potentialAssignees: assignees.
	
	self assert: assignees equals: sidebar potentialAssignees.