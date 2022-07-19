event handling
startDragging
	
	ActiveHand attachMorph: self.
	(self lane cards last = self) ifTrue:
		[self lane resizeBottomDetectionIgnoreLastCard].