as yet unclassified
testMouseEnterDragging

	| lane |
	lane := SPBLane new
		pasteup: (SPBPluggablePasteUpMorph new position: 0 @ -1).
		
	indicatorDetection lane: lane.
	indicatorDetection mouseEnterDragging: MouseEvent new.
	self assert: (0 @ 0) equals: (lane indicator vertexAt: 1).
	self assert: (280 @ 0) equals: (lane indicator vertexAt: 2).
	self assert: true equals: lane indicator visible. 