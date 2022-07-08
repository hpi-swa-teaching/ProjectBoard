creation
updateTitle: aText

	aText == self title ifFalse: 
		[self title: aText asString.
		self provider renameColumn: self to: aText asString].