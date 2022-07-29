accessing
potentialAssignees
	
	^ potentialAssignees ifNil: [potentialAssignees := self boardProvider listPossibleAssignees].