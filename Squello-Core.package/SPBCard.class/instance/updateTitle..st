updating
updateTitle: aString

	self title == aString ifFalse: 
		[self title: aString.
		self titleMorph contents: aString.
		self provider updateCard: self.
		self extent: (280 @ ((self titleMorph extent y + 20) max: 100)).
		self lane alignCards].