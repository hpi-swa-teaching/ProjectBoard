card movement
calculateCardPositionFor: aNumber
	
	| previousCard previousCardPosition |
	previousCard := self cards at: aNumber - 1.
	previousCardPosition := self cardPositions at: aNumber - 1.
	^ self pasteup position +
		(self borderOffset @ 
			(previousCardPosition y + previousCard height + self class defaultSpaceBetweenCards))
		