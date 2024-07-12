updating-local
updateStatus

	self isNote
		ifTrue: [self statusModel contents: 'Note'.
			^ self.].
	self isClosed
		ifTrue: [self statusModel contents: 'Closed'.
			^ self.].
	self statusModel contents: 'Open'.