tests
testAssignees

	card addAssignee: SPBAssignee new.
	self assert: #() equals: card assignees.