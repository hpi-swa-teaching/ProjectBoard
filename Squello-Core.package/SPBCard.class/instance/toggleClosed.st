updating
toggleClosed

	self isNote
		ifTrue: [^ self].
	self isClosed: self isClosed not.
	self boardProvider updateCard: self.