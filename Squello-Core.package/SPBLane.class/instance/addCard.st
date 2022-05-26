creation
addCard
	
	| cardTitle content response cardBuilder newCard cardJson |
	cardTitle := FillInTheBlank request: 'Enter title for new card:'.
	cardTitle = '' ifTrue: [^ self].
	content := Dictionary newFrom: {'title' -> cardTitle . 'body' -> ''}.
	response := self provider createIssue: content user: (self provider user) repo: (self provider repo).
	cardJson := (self provider addIssue: (response at: 'id') ToColumn: (self id)).
	
	cardBuilder := SPBCardBuilder new.
	cardBuilder provider: self provider.
	(newCard := cardBuilder buildFromRemote: cardJson) openInWorld.
	newCard lane: self.
	
	self cards add: newCard.
	self setFrontCardFor: newCard in: self cards.
	self pasteup addMorph: newCard.
	
	self alignCards.
	