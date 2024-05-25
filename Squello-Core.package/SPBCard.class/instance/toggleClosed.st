updating
toggleClosed

	self isNote ifTrue: [^ self].
	self flag: #todo. "actually close the card"
	self isClosed: self isClosed not.