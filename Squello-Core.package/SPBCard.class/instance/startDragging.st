event handling
startDragging
	
	ActiveHand attachMorph: self.
	(self column isLastCard: self) 
		ifTrue: [self column 
								removeFromOldColumn: self;
								resizeBottomDetection].