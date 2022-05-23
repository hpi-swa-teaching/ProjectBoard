creation
addCard
	
	| cardTitle content response cardBuilder newCard cardsInLane cardJson |
	cardTitle := FillInTheBlank request: 'Enter title for new card:'.
	cardTitle = '' ifTrue: [^ self].
	content := Dictionary newFrom: {'title' -> cardTitle . 'body' -> ''}.
	response := self provider createIssue: content user: (self provider user) repo: (self provider repo).
	cardJson := (self provider addIssue: (response at: 'id') ToColumn: (self id)).
	
	cardBuilder := SPBCardBuilder new.
	cardBuilder provider: self provider.
	(newCard := cardBuilder buildFromRemote: cardJson) openInWorld.
	newCard lane: self.
	cardsInLane := self board laneCardLinkage at: self id.
	cardsInLane add: newCard.
	self setFrontCardFor: newCard in: cardsInLane.
	self addMorph: newCard.
	
	self alignCards.
	