accessing
getCloseButtonLabel

	activeCard isNote ifTrue: [^ 'Cannot close this card'].
	activeCard isClosed ifTrue: [^ 'Reopen'].
	^ 'Close'