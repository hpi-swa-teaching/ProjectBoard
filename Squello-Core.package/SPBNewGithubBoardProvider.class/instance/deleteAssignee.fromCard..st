assignees
deleteAssignee: anSPBAssignee fromCard: anSPBCard
	
	anSPBCard isNote 
		ifTrue: [^ self deleteAssignee: anSPBAssignee fromDraft: anSPBCard.]
		ifFalse: [^ self deleteAssignee: anSPBAssignee fromIssue: anSPBCard.].