as yet unclassified
testUsedBuilder

	| builder |
	
	builder := ToolBuilder default.
	board usedBuilder: builder.
	
	self assert: builder equals: board usedBuilder.