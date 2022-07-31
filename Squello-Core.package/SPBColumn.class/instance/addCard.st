creation
addCard
	
	| cardTitle content cardBuilder |
	cardTitle := FillInTheBlank request: 'Enter title for new card:'.
	cardTitle = '' 
		ifTrue: [^ self].
	content := Dictionary newFrom: {'title' -> cardTitle . 'body' -> ''}.
	cardBuilder := SPBCardBuilder new.
	cardBuilder boardProvider: self boardProvider.
	cardBuilder changeProvider: self changeProvider.
	cardBuilder buildNew: content atTop: self.
	
	self alignCards.
	