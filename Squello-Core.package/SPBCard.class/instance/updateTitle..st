updating
updateTitle: aString

	self title == aString ifFalse: 
		[self title: aString.
		self titleMorph contents: aString.
		self provider updateCard: self].