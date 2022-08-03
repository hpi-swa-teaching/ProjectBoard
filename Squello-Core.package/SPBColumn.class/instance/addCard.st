creation
addCard
	
	| cardTitle content |
	cardTitle := FillInTheBlank request: 'Enter title for new card:'.
	cardTitle = '' 
		ifTrue: [^ self].
	content := Dictionary newFrom: {'title' -> cardTitle . 'body' -> ''}.
	SPBCard buildNew: content into: self.
	self alignCards.