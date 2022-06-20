as yet unclassified
testBuildWith
	
	| builder lane1 window |
	builder := SPBMorphicToolBuilder new.
	lane1 := SPBLane new 
		provider: board provider;
		id: 1337.
	board lanes: {lane1}.
	window := board buildWith: builder.
	
	self assert: true equals: (window isKindOf: PluggableSystemWindow).
	self assert: board equals: (window model).
	self assert: true equals: (window submorphs anySatisfy: [:each | each isKindOf: PluggablePanelMorph]).
	self assert: true equals: (window submorphs anySatisfy: [:each | each isKindOf: SPBPluggableResizeScrollPane]).