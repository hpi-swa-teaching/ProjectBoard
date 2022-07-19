card movement
addIndicatorAtBottom

	| bottomCard bottomPoint globalBottomPoint |
	self cards isEmpty
		ifFalse:
			[bottomCard := self cards last.
			bottomPoint := bottomCard position x @ (bottomCard position y + bottomCard extent y + 5).
			globalBottomPoint := bottomCard positionInWorld]
		ifTrue:
			[bottomPoint := 0 @ 0.
			globalBottomPoint := self pasteup positionInWorld].
	
	ActiveHand position y > globalBottomPoint  y ifTrue:
		[self addIndicatorAt: bottomPoint].
