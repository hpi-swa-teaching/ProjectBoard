labels
addLabel: aSPBLabel toCard: aSPBCard 
	
	aSPBCard isNote 
		ifTrue: [^ self addLabel: aSPBLabel toDraft: aSPBCard]
		ifFalse: [^ self addLabel: aSPBLabel toIssue: aSPBCard].