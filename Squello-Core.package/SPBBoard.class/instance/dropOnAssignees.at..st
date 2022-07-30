drag and drop
dropOnAssignees: anSPBAssignee at: index
	
	| assignees |
	assignees := self activeCard assignees.
	(anSPBAssignee isKindOf: SPBAssignee)
		ifFalse: [^ self inform: 'Can only drop assignees'].
	(assignees
		anySatisfy: [:each | each = anSPBAssignee])
			ifTrue: [^ self].
	self activeCard assignees add: anSPBAssignee.
	self activeCard updateAssigneeCount.
	self changed: #potentialAssigneesList.
	self changed: #activeCardAssigneeList.
	self boardProvider addAssignee: anSPBAssignee toCard: self activeCard.