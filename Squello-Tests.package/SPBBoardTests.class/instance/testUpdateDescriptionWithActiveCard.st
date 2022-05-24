as yet unclassified
testUpdateDescriptionWithActiveCard

	| card provider descriptionText |
	provider := SPBMockGithubBoardProvider new.
	card := SPBCard new.
	card provider: provider.
	descriptionText := 'This is a fancy description!'.
	
	board
		activeCard: card;
		updateDescription: (Text fromString: descriptionText).
		
	self assert: descriptionText equals: card description.
	self assert: descriptionText equals: provider card description.
	self assert: false equals: description edits.