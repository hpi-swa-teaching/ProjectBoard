creation
addCard
	
	| cardTitle content response |
	cardTitle := FillInTheBlank request: 'Enter title for new card:'.
	cardTitle = '' ifTrue: [^ self].
	content := Dictionary newFrom: {'title' -> cardTitle . 'body' -> ''}.
	response := self provider createIssue: content user: (self provider user) repo: (self provider repo).
	self provider addIssue: (response at: 'id') ToColumn: (self id).
	
	self fetchCards.	
	