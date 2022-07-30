as yet unclassified
testBuildLaneBodySpecWithAnd

	| column spec pasteup |
	column := SPBColumn new
		id: 187;
		title: 'column1'.
	spec := board buildColumnBodySpecWith: board usedBuilder and: column.
	pasteup := spec children first.
	
	self assert: true equals: (spec isKindOf: PluggableScrollPaneSpec).
	self assert: board equals: spec model.
	
	self assert: true equals: (pasteup isKindOf: SPBPluggablePasteUpSpec).
	self assert: column equals: pasteup model.
	self assert: 187 equals: pasteup name.