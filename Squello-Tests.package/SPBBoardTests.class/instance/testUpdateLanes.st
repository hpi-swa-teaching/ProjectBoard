as yet unclassified
testUpdateLanes

	| builder column pasteup |
	builder := SPBMockBuilder new.
	pasteup := SPBPluggablePasteUpMorph new.

	column := SPBMockGithubBoardProvider new queryColumns at: 1.
	builder fakeWidgets: (Dictionary newFrom: { 1234 ->  pasteup. #column1234 -> 'column1234' }).
	
	board usedBuilder: builder.
	board columns: { column } asOrderedCollection.
	board updateColumns.
	
	self assert: { 1234 } asOrderedCollection equals: builder callOrder.
	self assert: pasteup equals: column pasteup.
	
	self assert: board equals: column board.