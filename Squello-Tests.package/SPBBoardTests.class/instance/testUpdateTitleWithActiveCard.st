as yet unclassified
testUpdateTitleWithActiveCard

	| card provider titleText |
	provider := SPBMockGithubBoardProvider new.
	card := SPBCard new.
	card provider: provider.
	titleText := 'This is a fancy description!'.
	
	board
		activeCard: card;
		updateTitle: (Text fromString: titleText).
		
	self assert: titleText equals: card title.
	self assert: titleText equals: provider card title.
	self assert: false equals: title edits.