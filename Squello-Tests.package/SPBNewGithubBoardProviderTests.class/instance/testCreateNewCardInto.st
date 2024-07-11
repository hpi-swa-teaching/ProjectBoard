tests-cards
testCreateNewCardInto

	| dict |
	dict := {'test' -> true} asDictionary.
	self assert: (provider createNewCard: dict into: SPBColumn new).