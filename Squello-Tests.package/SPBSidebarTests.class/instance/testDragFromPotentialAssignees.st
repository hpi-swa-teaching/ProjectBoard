as yet unclassified
testDragFromPotentialAssignees

	| activeCard assignee1 assignee2 |
	activeCard := SPBCard new.
	activeCard assignees: (OrderedCollection newFrom: {}).
	assignee1 := SPBAssignee new username: 'uncoolerUser'.
	assignee2 := SPBAssignee new username: 'coolerUser'.
	sidebar potentialAssignees: (OrderedCollection newFrom: {assignee1 . assignee2}).
	sidebar activeCard: activeCard.
	
	self assert: assignee2 equals: (sidebar dragFromPotentialAssignees: 2).