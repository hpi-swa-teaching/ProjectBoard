tests
testCreateCardInto

	| cardDictionary column card |
	cardDictionary := Dictionary newFrom: {'title'->'Found a bug'}.
	column := SPBColumn new 
		boardProvider: SPBMockGithubBoardProvider new.
	
	card := provider createNewCard: cardDictionary into: column.
	self assert: card title equals: 'Found a bug'.
	card abandon.
	
	
	
	