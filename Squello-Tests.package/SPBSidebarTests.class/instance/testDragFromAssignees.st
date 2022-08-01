as yet unclassified
testDragFromAssignees

	| activeCard assignee1 assignee2 |
	activeCard := SPBCard new.
	assignee1 := SPBAssignee new username: 'uncoolerUser'.
	assignee2 := SPBAssignee new username: 'coolerUser'.
	activeCard assignees: (OrderedCollection newFrom: {assignee1 . assignee2}).
	sidebar activeCard: activeCard.
	
	self assert: assignee2 equals: (sidebar dragFromAssignees: 2).