card movement
alignCards
	
	self cardPositions removeAll.
	self cards 
		withIndexDo: [:each :index |	index = 1 
				ifTrue: [self cardPositions add: 
					((self pasteup position x + 4) @ 
					(self pasteup position y + self class defaultSpaceBetweenCards))]
				ifFalse: [self cardPositions add:
					((self pasteup position x + 4) @ 
					(self pasteup position y + ((self cardPositions at: index - 1) y) + ((self cards at: index - 1) height) + self class defaultSpaceBetweenCards))]].
			
	self cards withIndexDo: 
		[:each :index | each walkToPosition: (self cardPositions at: index)].