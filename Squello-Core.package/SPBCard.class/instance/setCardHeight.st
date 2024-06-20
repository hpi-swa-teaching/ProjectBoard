updating-local
setCardHeight

	| labelHeightsSum |
	labelHeightsSum := self labelModels size = 0 ifTrue: [0] ifFalse: [self labelModels last position y + self labelModels last extent y - self labelModels first position y].
	self extent: 
		self class defaultCardExtent x @ 
		((self titleModel extent y + labelHeightsSum + self labelTitleOffset + self statusModel extent y) 
		max: self class defaultCardExtent y).