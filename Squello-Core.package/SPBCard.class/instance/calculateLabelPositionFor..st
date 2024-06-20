updating-local
calculateLabelPositionFor: aNumber

	| label previousLabel firstAttempt | 
	previousLabel := self labelModels at: aNumber - 1.
	label := self labelModels at: aNumber.
	
	firstAttempt := (previousLabel position x + previousLabel extent x + self labelBorderOffset) @ previousLabel position y.
	firstAttempt x + label extent x <= (self extent x - self labelBorderOffset) ifTrue: [^ firstAttempt].
	
	^ self labelBorderOffset @ 
		(previousLabel position y + (previousLabel extent y + self inbetweenLabelOffset)).