event handling
startDragging
	
	ActiveHand attachMorph: self.
	(self lane isLastCard: self) 
		ifTrue: [self lane resizeBottomDetectionIgnoreLastCard].