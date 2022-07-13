drag and drop
dropOnAssignees: anSPBAssignee at: index
	
	(anSPBAssignee isKindOf: SPBAssignee)
		ifFalse: [^ self inform: 'Can only drop assignees'].
	(self activeCard assignees anySatisfy: [:each | each = anSPBAssignee]) ifTrue: [^ self].
	self activeCard assignees add: anSPBAssignee.
	self activeCard updateAssigneeCount.
	self changed: #potentialAssigneesList.
	self changed: #activeCardAssigneeList.
	self provider addAssignee: anSPBAssignee toCard: self activeCard.