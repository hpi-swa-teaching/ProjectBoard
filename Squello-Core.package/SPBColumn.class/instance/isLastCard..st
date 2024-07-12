accessing
isLastCard: anSPBCard

	self cards isEmpty
		ifTrue: [^ false].
	^ self cards last = anSPBCard.