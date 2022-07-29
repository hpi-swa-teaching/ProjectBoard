updating
updateDescription: aString

	self description == aString 
		ifFalse: [self description: aString.
			self boardProvider updateCard: self].