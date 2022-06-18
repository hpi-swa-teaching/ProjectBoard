as yet unclassified
testUpdateLanesWithCards

	| builder lanes |
	builder := SPBMockBuilder new.
	lanes := SPBMockGithubBoardProvider new queryColumns.
	(lanes at: 1) jsonCards: '{}' parseAsJson.
	(lanes at: 2) jsonCards: '{}' parseAsJson.
	builder fakeWidgets: { 1234 -> '1234' . #lane1234 -> 'lane1234' . 5678 -> '5678' . #lane5678 -> 'lane5678' } asDictionary.
	
	board usedBuilder: builder.
	board lanes: lanes.

	board addDependent: self.
	board updateLanesWithCards.
	
	self assert: { #buildLaneAreaChildren } asOrderedCollection equals: self calledSymbols.