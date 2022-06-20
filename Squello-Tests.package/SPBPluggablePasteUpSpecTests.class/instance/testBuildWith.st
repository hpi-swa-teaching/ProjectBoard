as yet unclassified
testBuildWith

	| builder |
	builder := SPBMockMorphicToolBuilder new.
	self assert: nil equals: builder pasteUpSpec.
	pasteUpSpec buildWith: builder.
	self assert: pasteUpSpec equals: builder pasteUpSpec.