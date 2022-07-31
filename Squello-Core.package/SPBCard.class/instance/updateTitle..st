updating-remote
updateTitle: aString

	self title == aString 
		ifFalse: [self title: aString.
			self titleMorph contents: aString.
			self boardProvider updateCard: self.
			self updateLabelIcons.
			self resizeCard].