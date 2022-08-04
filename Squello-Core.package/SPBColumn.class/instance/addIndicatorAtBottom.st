card movement
addIndicatorAtBottom

	| bottomCard bottomPoint globalBottomPoint cursorPosition |
	self cards isEmpty
		ifFalse:
			[bottomCard := self cards last.
			bottomPoint := bottomCard position x @ 
				(bottomCard position y + bottomCard extent y + SPBCard indicatorCardEdgeOffset).
			globalBottomPoint := bottomCard positionInWorld]
		ifTrue:
			[bottomPoint := 0@0.
			globalBottomPoint := self pasteup positionInWorld].
	
	cursorPosition := ActiveHand position.
	cursorPosition y > globalBottomPoint y ifTrue:
		[self addIndicatorAt: bottomPoint].
