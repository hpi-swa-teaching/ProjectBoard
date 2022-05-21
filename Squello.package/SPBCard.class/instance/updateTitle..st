accessing
updateTitle: aString

	self title == aString ifFalse: [
		self title: aString.
		self provider updateCard: self.
	].