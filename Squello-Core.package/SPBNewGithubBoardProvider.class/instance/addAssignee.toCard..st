assignees
addAssignee: aSPBAssignee toCard: aSPBCard 
	
	aSPBCard isNote 
		ifTrue: [^ self addAssignee: aSPBAssignee toDraft: aSPBCard]
		ifFalse: [^ self addAssignee: aSPBAssignee toIssue: aSPBCard].