accessing
potentialAssignees
	
	potentialAssignees ifNil: [self potentialAssignees: ((self provider listPossibleAssigneesForUser: self provider user repo: self provider repo) collect: [:each | SPBAssignee newFrom: each])].
	^ potentialAssignees.