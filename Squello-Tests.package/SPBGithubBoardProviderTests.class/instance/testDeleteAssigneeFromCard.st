tests
testDeleteAssigneeFromCard

	| card assignee target |
	card := SPBCard new.
	assignee := SPBAssignee new username: 'MatthiasCr'.
		
	target := {
		#issue -> nil.
		#user -> provider user.
		#repo -> provider repo.
		#assignee -> {'assignees' -> {assignee username}} asDictionary.
	} asDictionary.
		
	provider deleteAssignee: assignee fromCard: card.
	self assert: target equals: provider api messages first.