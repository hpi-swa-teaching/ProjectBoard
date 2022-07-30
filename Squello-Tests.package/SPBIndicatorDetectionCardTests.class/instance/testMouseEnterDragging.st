as yet unclassified
testMouseEnterDragging
	
	| card lane |
	lane := SPBLane new.
	card := SPBCard new
		lane: lane;
		position: 10 @ 10.
		
	indicatorDetection 
		card: card;
		location: #upper.
		
	indicatorDetection mouseEnterDragging: MouseEvent new.
	
	self assert: (10 @ 5) equals: (lane indicator vertexAt: 1).
	self assert: (290 @ 5) equals: (lane indicator vertexAt: 2).
	self assert: true equals: lane indicator visible.