as yet unclassified
testDragFromPotentialAssignees

	| activeCard assignee1 assignee2 |
	activeCard := SPBCard new.
	activeCard assignees: (OrderedCollection newFrom: {}).
	assignee1 := SPBAssignee new username: 'uncoolerUser'.
	assignee2 := SPBAssignee new username: 'coolerUser'.
	board potentialAssignees: (OrderedCollection newFrom: {assignee1 . assignee2}).
	board activeCard: activeCard.
	
	self assert: assignee2 equals: (board dragFromPotentialAssignees: 2).
	