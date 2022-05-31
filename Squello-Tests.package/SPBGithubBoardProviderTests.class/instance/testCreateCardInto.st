tests
testCreateCardInto

	| cardDictionary lane response |
	cardDictionary := Dictionary newFrom: {'title'->'Titel Titel yey'}.
	lane := SPBLane new id: 12345.
	
	response := provider createCard: cardDictionary into: lane.
	self assert: ('https://api.github.com/projects/columns/', lane id) equals: (response at: 'column_url').
	self assert: ('https://api.github.com/repos/user/repo/issues', 330) equals: (response at: 'content_url').	
	
	
	
	