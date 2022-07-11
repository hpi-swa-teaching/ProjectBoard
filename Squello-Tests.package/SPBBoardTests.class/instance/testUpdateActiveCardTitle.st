as yet unclassified
testUpdateActiveCardTitle

	| usedBuilder card |
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: PluggableTextMorph new id: #sidebarTitle.
	card := SPBCard new 
		provider: SPBMockGithubBoardProvider new;
		titleMorph: TextMorph new;
		assigneeMorph: TextMorph new;
		labels: (OrderedCollection newFrom: {});
		lane: SPBLane new.
	board usedBuilder: usedBuilder.
	board activeCard: card.
	
	board updateActiveCardTitle: 'neuer toller Titel' asText.
	self assert: 'neuer toller Titel' equals: card title.
	