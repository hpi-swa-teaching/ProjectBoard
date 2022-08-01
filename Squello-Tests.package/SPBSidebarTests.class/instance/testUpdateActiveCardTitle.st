as yet unclassified
testUpdateActiveCardTitle

	| usedBuilder card |
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: PluggableTextMorph new id: #sidebarTitle.
	card := SPBCard new 
		boardProvider: SPBMockGithubBoardProvider new;
		labels: (OrderedCollection newFrom: {});
		column: SPBColumn new.
	sidebar board usedBuilder: usedBuilder.
	sidebar activeCard: card.
	
	sidebar updateActiveCardTitle: 'neuer toller Titel' asText.
	self assert: 'neuer toller Titel' equals: card title.