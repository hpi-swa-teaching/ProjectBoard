card movement
alignCards
	
	| newPositions |
	newPositions := OrderedCollection new.
	self cards withIndexDo: 
		[:each :index |	index = 1 
				ifTrue: [newPositions add: 
					((self pasteup position x + 4) @ 
					(self pasteup position y + self defaultSpaceBetweenCards))]
				ifFalse: [newPositions add: 
					((self pasteup position x + 4) @ 
					(self pasteup position y + ((newPositions at: index -1) y) + ((self cards at: index - 1) height) + self defaultSpaceBetweenCards))]].
			
	self cards withIndexDo: 
		[:each :index | each walkToPosition: (newPositions at: index)].
