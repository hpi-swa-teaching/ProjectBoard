accessing
nextId

	self currentID ifNil: [self currentID: 0].
	self currentID: self currentID + 1.
	^ self currentID.