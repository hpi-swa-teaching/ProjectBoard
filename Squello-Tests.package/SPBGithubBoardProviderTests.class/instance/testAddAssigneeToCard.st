tests
testAddAssigneeToCard

	| card assignee target |
	card := SPBCard new.
	assignee := SPBAssignee new username: 'MatthiasCr'.
	target := {
		#issue -> nil.
		#user -> provider user.
		#repo -> provider repo.
		#assignee -> {'assignees' -> {assignee username}} asDictionary.
	} asDictionary.
		
	provider addAssignee: assignee toCard: card.
	self assert: target equals: provider api messages first.