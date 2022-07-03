tests
testBuildWith
	
	| builder window |
	builder := SPBMorphicToolBuilder new.
	window := auth buildWith: builder.
	
	self assert: (window isKindOf: PluggableDialogWindow).