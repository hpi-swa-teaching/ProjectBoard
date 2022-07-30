as yet unclassified
testHandlesMouseOverDragging

	| event card |
	event := MouseEvent new.
	card := SPBCard new.
	event setHand: HandMorph new.
	event hand addMorph: card.
	
	self assert: true equals: (indicatorDetection handlesMouseOverDragging: event).