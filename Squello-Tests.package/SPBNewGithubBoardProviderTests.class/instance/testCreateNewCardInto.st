tests-cards
testCreateNewCardInto

	| dict |
	dict := Dictionary newFromPairs: {'test'. true}.
	self assert: (provider createNewCard: dict into: SPBColumn new).