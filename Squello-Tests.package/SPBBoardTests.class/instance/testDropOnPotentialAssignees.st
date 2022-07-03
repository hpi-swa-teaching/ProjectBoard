as yet unclassified
testDropOnPotentialAssignees

	| activeCard assignee1 assignee2 |
	activeCard := SPBCard new.
	activeCard assigneeMorph: TextMorph new.
	assignee1 := SPBAssignee new username: 'uncoolerUser'; id: 1.
	assignee2 := SPBAssignee new username: 'coolerUser'; id: 2.
	activeCard assignees: (OrderedCollection newFrom: {assignee1 . assignee2}).
	board activeCard: activeCard.
	
	board dropOnPotentialAssignees: assignee1 at: 3.
	self assert: (board activeCard assignees contains: [:each | each =  assignee1]) not.
	self assert: 1 equals: board activeCard assignees size.
	