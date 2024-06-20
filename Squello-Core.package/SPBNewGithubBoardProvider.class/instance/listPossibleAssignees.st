assignees
listPossibleAssignees

	^ (self api listPossibleAssigneesForProject: self projectId) 
		collect: [:each| SPBAssignee newFrom: each].