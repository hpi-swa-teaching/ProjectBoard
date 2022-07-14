accessing
potentialAssigneeSelected: anObject
	
	(anObject isKindOf: SPBAssignee)
		ifFalse: [^ self].
	potentialAssigneeSelected := anObject.
	self changed: #potentialAssigneeSelected.