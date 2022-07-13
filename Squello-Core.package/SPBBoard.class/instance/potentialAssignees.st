accessing
potentialAssignees
	
	^ potentialAssignees ifNil: [potentialAssignees := self provider listPossibleAssignees].