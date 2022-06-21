as yet unclassified
testUpdateLanesWithCards

	| builder lanes lane1 lane2 pasteup1 pasteup2 laneArea |
	builder := SPBMockBuilder new.
	lanes := SPBMockGithubBoardProvider new queryColumns.
	laneArea := ScrollPane new.
	lane1 := lanes first.
	lane2 := lanes last.
	pasteup1 := SPBPluggablePasteUpMorph new.
	pasteup2 := SPBPluggablePasteUpMorph new.
	lane1
		jsonCards: '{}' parseAsJson;
		pasteup: pasteup1.
	lane2
		jsonCards: '{}' parseAsJson;
		pasteup: pasteup2.
	builder fakeWidgets: (Dictionary newFrom: { 1234 -> pasteup1 . #lane1234 -> (lanes at: 1) . 5678 -> pasteup2 . #lane5678 -> (lanes at: 2) . #laneArea -> laneArea }).
	
	board usedBuilder: builder.
	board lanes: lanes.

	board addDependent: self.
	board updateLanesWithCards.
	
	self assert: { #buildLaneAreaChildren } asOrderedCollection equals: self calledSymbols.