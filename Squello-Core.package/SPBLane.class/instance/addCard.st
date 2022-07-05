creation
addCard
	
	| cardTitle content cardBuilder newSPBCard |
	cardTitle := FillInTheBlank request: 'Enter title for new card:'.
	cardTitle = '' ifTrue: [^ self].
	content := Dictionary newFrom: {'title' -> cardTitle . 'body' -> ''}.
	cardBuilder := SPBCardBuilder new.
	cardBuilder provider: self provider.
	newSPBCard := cardBuilder buildNew: content AtTop: self.
	
	self alignCards.
	