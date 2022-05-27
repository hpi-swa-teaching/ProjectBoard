updating
updateDescription: aString

	self description == aString ifFalse: 
		[self description: aString.
		self provider updateCard: self].