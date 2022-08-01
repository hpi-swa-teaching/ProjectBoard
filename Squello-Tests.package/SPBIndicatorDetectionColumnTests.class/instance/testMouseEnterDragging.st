as yet unclassified
testMouseEnterDragging

	| column |
	column := SPBColumn new
		pasteup: (SPBPluggablePasteUpMorph new position: 0 @ -1).
		
	indicatorDetection column: column.
	indicatorDetection mouseEnterDragging: MouseEvent new.
	self assert: (0 @ 0) equals: (column indicator vertexAt: 1).
	self assert: (280 @ 0) equals: (column indicator vertexAt: 2).
	self assert: true equals: column indicator visible. 