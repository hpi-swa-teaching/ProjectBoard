updating-local
calculateLabelPositionFor: aNumber

	| label previousLabel positionIfSameRow | 
	previousLabel := self labelModels at: aNumber - 1.
	label := self labelModels at: aNumber.
	
	positionIfSameRow := (previousLabel position x + previousLabel extent x + self labelBorderOffset) @ previousLabel position y.
	positionIfSameRow x + label extent x <= (self extent x - self labelBorderOffset)
		ifTrue: [^ positionIfSameRow].
	
	^ self labelBorderOffset @ 
		(previousLabel position y + (previousLabel extent y + self inbetweenLabelOffset)).