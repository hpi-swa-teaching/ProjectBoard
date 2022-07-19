card movement
addIndicatorAtBottom

	| bottomCard bottomPoint globalBottomPoint |
	bottomCard := self cards last.
	bottomPoint := bottomCard position x @ (bottomCard position y + bottomCard extent y + 5).
	globalBottomPoint := bottomCard positionInWorld.
	
	ActiveHand position y > globalBottomPoint  y ifTrue:
		[self addIndicatorAt: bottomPoint].
