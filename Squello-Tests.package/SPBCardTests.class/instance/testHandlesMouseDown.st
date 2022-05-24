tests
testHandlesMouseDown

	| yellowEvent notYellowEvent |
	yellowEvent := SPBMockMouseEvent new.
	yellowEvent yellow: true.
	notYellowEvent := SPBMockMouseEvent new.
	
	self assert: (card handlesMouseDown: notYellowEvent) not.
	self assert: (card handlesMouseDown: yellowEvent).