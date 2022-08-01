as yet unclassified
testUpdateLanesWithCards

	| builder columns column1 column2 pasteup1 pasteup2 columnArea |
	builder := SPBMockBuilder new.
	columns := SPBMockGithubBoardProvider new queryColumns.
	columnArea := ScrollPane new.
	column1 := columns first.
	column2 := columns last.
	pasteup1 := SPBPluggablePasteUpMorph new.
	pasteup2 := SPBPluggablePasteUpMorph new.
	column1
		jsonCards: '{}' parseAsJson;
		pasteup: pasteup1.
	column2
		jsonCards: '{}' parseAsJson;
		pasteup: pasteup2.
	builder fakeWidgets: (Dictionary newFrom: { 1234 -> pasteup1 . #column1234 -> (columns at: 1) . 5678 -> pasteup2 . #column5678 -> (columns at: 2) . #columnArea -> columnArea }).
	
	board usedBuilder: builder.
	board columns: columns.

	board addDependent: self.
	board updateColumns.
	
	self assert: { #buildColumnAreaChildren } asOrderedCollection equals: self calledSymbols.