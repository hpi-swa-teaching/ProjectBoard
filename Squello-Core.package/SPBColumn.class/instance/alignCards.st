card movement
alignCards
	
	self cardPositions: OrderedCollection new.
	self cards 
		withIndexDo: [:each :index | index = 1 
			ifTrue: [self cardPositions add: 
				self pasteup position + (self borderOffset @ self class defaultSpaceBetweenCards)]
			ifFalse: [self cardPositions add:
				self pasteup position + (self borderOffset @ ((self cardPositions at: index - 1) y + (self cards at: index - 1) height + self class defaultSpaceBetweenCards))]].
			
	self cards withIndexDo: 
		[:each :index | each walkToPosition: (self cardPositions at: index)].