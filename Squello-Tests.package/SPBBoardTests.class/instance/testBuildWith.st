as yet unclassified
testBuildWith
	
	| builder column1 window |
	builder := SPBMorphicToolBuilder new.
	column1 := SPBColumn new 
		boardProvider: board boardProvider;
		changeProvider: board changeProvider;
		id: 1337.
	board columns: {column1}.
	
	window := board buildWith: builder.
	
	self assert: true equals: (window isKindOf: PluggableSystemWindow).
	self assert: board equals: (window model).
	self assert: true equals: (window submorphs anySatisfy: [:each | each isKindOf: PluggablePanelMorph]).
	self assert: true equals: (window submorphs anySatisfy: [:each | each isKindOf: SPBPluggableResizeScrollPane]).