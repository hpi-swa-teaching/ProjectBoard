labels
deleteLabel: aSPBLabel fromCard: aSPBCard 
	
	aSPBCard isNote 
		ifTrue: [^ self deleteLabel: aSPBLabel fromDraft: aSPBCard]
		ifFalse: [^ self deleteLabel: aSPBLabel fromIssue: aSPBCard].