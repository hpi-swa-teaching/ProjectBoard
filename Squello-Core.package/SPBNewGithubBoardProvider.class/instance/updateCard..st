cards
updateCard: aSPBCard 

	aSPBCard isNote
	ifTrue: [
		self notYetImplemented.
		]
	ifFalse: [
		self api updateIssue: aSPBCard.
		].