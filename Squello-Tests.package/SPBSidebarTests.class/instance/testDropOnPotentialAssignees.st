as yet unclassified
testDropOnPotentialAssignees

	| activeCard assignee1 assignee2 boardProvider |
	activeCard := SPBCard new.
	boardProvider := SPBMockGithubBoardProvider new.
	assignee1 := SPBAssignee new username: 'uncoolerUser'; id: 1.
	assignee2 := SPBAssignee new username: 'coolerUser'; id: 2.
	activeCard assignees: (OrderedCollection newFrom: {assignee1 . assignee2}).
	activeCard boardProvider: boardProvider.
	sidebar activeCard: activeCard.
	
	sidebar dropOnPotentialAssignees: assignee1 at: 3.
	self assert: (sidebar activeCard assignees contains: [:each | each =  assignee1]) not.
	self assert: 1 equals: sidebar activeCard assignees size.
	self assert: activeCard equals: boardProvider card.
	self assert: assignee1 equals: boardProvider assignee.