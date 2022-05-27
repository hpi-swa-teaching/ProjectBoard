accessing
assigneeSelected: anObject
	
	(anObject isKindOf: SPBAssignee) ifFalse: [^ self].
	assigneeSelected := anObject.
	self changed: #assigneeSelected.