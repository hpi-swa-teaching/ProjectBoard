creation
resizeBottomDetection
	
	| bottomCard bottomPoint |
	(self cards isEmpty) 
		ifFalse: 
			[bottomCard := self cards last.
			bottomPoint := bottomCard position x @ (bottomCard position y + bottomCard extent y + 5)]
		ifTrue:
			[bottomPoint := 0 @ 0].
	
	self bottomDetection position: bottomPoint.
	self bottomDetection extent: 280 @ (self pasteup extent y - bottomPoint y).