card movement
alignCards
	"because the position of a card is dependent of the previous card position, 
	we calculate all positions first bevor we let the cards move"
	
	self cardPositions: OrderedCollection new.
	self cards 
		withIndexDo: [:card :index | index = 1 
			ifTrue: [self cardPositions add: self defaultTopCardPosition]
			ifFalse: [self cardPositions add: (self calculateCardPositionFor: index)]].
			
	self cards withIndexDo: 
		[:each :index | each walkToPosition: (self cardPositions at: index)].