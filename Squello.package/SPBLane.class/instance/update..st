accessing
update: aText

	self titleWindow setText: aText.

	aText == self title ifFalse: 
		[self title: aText asString.
		self provider renameColumn: (self id) to: aText asString].