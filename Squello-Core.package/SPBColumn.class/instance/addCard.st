creation
addCard
	
	| cardTitle content |
	cardTitle := FillInTheBlank request: 'Enter title for new card:'.
	cardTitle = '' 
		ifTrue: [^ self].
	content := Dictionary newFrom: {'title' -> cardTitle . 'body' -> ''}.
	self cardBuilder buildNew: content atTop: self.
	self alignCards.
	