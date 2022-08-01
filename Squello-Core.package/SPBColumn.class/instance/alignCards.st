card movement
alignCards
	
	self cardPositions: OrderedCollection new.
	self cards 
		withIndexDo: [:card :index | index = 1 
				ifTrue: [self cardPositions add: 
					self pasteup position + (self borderOffset @ self class defaultSpaceBetweenCards)]
				ifFalse: [self cardPositions add:
					self pasteup position + (self borderOffset @ self class defaultSpaceBetweenCards + (self cardPositions at: index - 1) y + (self cards at: index - 1) height)]].
			
	self cards withIndexDo: 
		[:card :index | card walkToPosition: (self cardPositions at: index)].