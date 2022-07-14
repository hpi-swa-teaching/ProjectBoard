assignees
listPossibleAssignees

	^ (self api listPossibleAssigneesForUser: self user repo: self repo) 
			collect: [:each | SPBAssignee newFrom: each].