as yet unclassified
testUpdateLanes

	| builder lane pasteup |
	builder := SPBMockBuilder new.
	pasteup := SPBPluggablePasteUpMorph new.

	lane := SPBMockGithubBoardProvider new queryColumns at: 1.
	builder fakeWidgets: (Dictionary newFrom: { 1234 ->  pasteup. #lane1234 -> 'lane1234' }).
	
	board usedBuilder: builder.
	board lanes: { lane } asOrderedCollection.
	board updateLanes.
	
	self assert: { 1234 . #lane1234 } asOrderedCollection equals: builder callOrder.
	self assert: pasteup equals: lane pasteup.
	self assert: 'lane1234' equals: lane lane.
	
	self assert: board equals: lane board.