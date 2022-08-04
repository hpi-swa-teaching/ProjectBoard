updating-local
calculateLabelPositionFor: aNumber

	| label previousLabel | 
	previousLabel := self labelModels at: aNumber - 1.
	label := self labelModels at: aNumber.
	
	^ self labelBorderOffset @ 
		(previousLabel position y + (previousLabel extent y + self inbetweenLabelOffset))