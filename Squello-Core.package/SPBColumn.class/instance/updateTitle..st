creation
updateTitle: aText

	aText == self title 
		ifFalse: [self title: aText asString.
			self boardProvider renameColumn: self to: aText asString].