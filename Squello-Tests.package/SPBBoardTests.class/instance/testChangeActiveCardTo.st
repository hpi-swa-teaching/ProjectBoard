as yet unclassified
testChangeActiveCardTo

	| card provider descriptionText titleText |
	descriptionText := 'A fancy description!'.
	titleText := 'A fancy title!'.
	provider := SPBMockGithubBoardProvider new.
	card := SPBCard new.
	card 
		provider: provider;
		description: descriptionText;
		title: titleText.
	
	board changeActiveCardTo: card.

	self assert: descriptionText equals: description text.
	self assert: titleText equals: title text.