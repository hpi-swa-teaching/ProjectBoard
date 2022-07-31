updating-local
addAssigneeLocal: anSPBAssignee

	(self assignees anySatisfy: [:each | each = anSPBAssignee]) 
		ifTrue: [^ self].

	self assignees add: anSPBAssignee.
	self updateAssigneeCount.