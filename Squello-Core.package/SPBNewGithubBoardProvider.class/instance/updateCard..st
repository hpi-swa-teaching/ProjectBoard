cards
updateCard: aSPBCard 

	aSPBCard isNote
	ifTrue: [
		self api updateDraft: aSPBCard.
		]
	ifFalse: [
		self api updateIssue: aSPBCard.
		].