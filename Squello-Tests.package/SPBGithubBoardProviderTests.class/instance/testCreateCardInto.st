tests
testCreateCardInto

	| cardDictionary column response |
	cardDictionary := Dictionary newFrom: {'title'->'Titel Titel yey'}.
	column := SPBColumn new id: 12345.
	
	response := provider createCard: cardDictionary into: column.
	self assert: ('https://api.github.com/projects/columns/', column id) equals: (response at: 'column_url').
	self assert: ('https://api.github.com/repos/user/repo/issues', 330) equals: (response at: 'content_url').	
	
	
	
	