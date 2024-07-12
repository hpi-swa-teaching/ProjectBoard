accessing
getCloseButtonLabel

	self activeCard isNote 
		ifTrue: [^ 'Cannot close this card'].
	self activeCard isClosed 
		ifTrue: [^ 'Reopen'].
	^ 'Close'.