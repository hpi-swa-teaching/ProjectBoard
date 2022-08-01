as yet unclassified
testRerenderColumns

	| builder columns |
	builder := SPBMockBuilder new.
	columns := SPBMockGithubBoardProvider new queryColumns.
	(columns at: 1) jsonCards: '{}' parseAsJson.
	(columns at: 2) jsonCards: '{}' parseAsJson.
	builder fakeWidgets: (Dictionary newFrom: { 1234 -> '1234' . #column1234 -> 'column1234' . 5678 -> '5678' . #column5678 -> 'column5678' }).
	
	board usedBuilder: builder.
	board columns: columns.
	board rerenderColumns.
	
	self assert: { 1234  . 5678  } asOrderedCollection equals: builder callOrder.
	self assert: '1234' equals: (columns at: 1) pasteup.
	self assert: '5678' equals: (columns at: 2) pasteup.
	
	self assert: board equals: (columns at: 1) board.
	self assert: board equals: (columns at: 2) board.