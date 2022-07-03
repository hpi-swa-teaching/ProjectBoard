as yet unclassified
testUpdateActiveCardDescription

	| usedBuilder card |
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: PluggableTextMorph new id: #sidebarDescription.
	card := SPBCard new provider: SPBGithubBoardProvider new.
	board usedBuilder: usedBuilder.
	board activeCard: card.
	
	board updateActiveCardDescription: 'neue tolle description' asText.
	self assert: 'neue tolle description' equals: card description.
	