tests
testAddAssigneeToCard

	| card assignee target |
	card := SPBCard new.
	assignee := SPBAssignee new username: 'MatthiasCr'.
	target := Dictionary newFrom: {
		#issue -> nil.
		#user -> provider user.
		#repo -> provider repo.
		#assignee -> (Dictionary newFrom: {'assignees' -> {assignee username}}).
	}.
		
	provider addAssignee: assignee toCard: card.
	self assert: target equals: provider api messages first.