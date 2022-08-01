as yet unclassified
testUpdateActiveCardDescription

	| usedBuilder card |
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: PluggableTextMorph new id: #sidebarDescription.
	card := SPBCard new boardProvider: SPBMockGithubBoardProvider new.
	sidebar board usedBuilder: usedBuilder.
	sidebar activeCard: card.
	
	sidebar updateActiveCardDescription: 'neue tolle description' asText.
	self assert: 'neue tolle description' equals: card description.