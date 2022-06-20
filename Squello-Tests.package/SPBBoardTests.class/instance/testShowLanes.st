as yet unclassified
testShowLanes

	| builder lanes |
	builder := SPBMockBuilder new.
	lanes := SPBMockGithubBoardProvider new queryColumns.
	(lanes at: 1) jsonCards: '{}' parseAsJson.
	(lanes at: 2) jsonCards: '{}' parseAsJson.
	builder fakeWidgets: (Dictionary newFrom: { 1234 -> '1234' . #lane1234 -> 'lane1234' . 5678 -> '5678' . #lane5678 -> 'lane5678' }).
	
	board usedBuilder: builder.
	board lanes: lanes.
	board showLanes.
	
	self assert: { 1234 . #lane1234 . 5678 . #lane5678 } asOrderedCollection equals: builder callOrder.
	self assert: '1234' equals: (lanes at: 1) pasteup.
	self assert: 'lane1234' equals: (lanes at: 1) lane.
	self assert: '5678' equals: (lanes at: 2) pasteup.
	self assert: 'lane5678' equals: (lanes at: 2) lane.
	
	self assert: board equals: (lanes at: 1) board.
	self assert: board equals: (lanes at: 2) board.