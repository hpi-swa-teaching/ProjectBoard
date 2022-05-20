accessing
updateText: aText

	aText == self title ifFalse: 
		[self title: aText asString.
		self provider renameColumn: (self id) to: aText asString].