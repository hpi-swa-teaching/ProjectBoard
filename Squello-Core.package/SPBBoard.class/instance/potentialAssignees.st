accessing
potentialAssignees
	
	potentialAssignees ifNil: [self potentialAssignees: ((self provider listPossibleAssignees) collect: [:each | SPBAssignee newFrom: each])].
	^ potentialAssignees.