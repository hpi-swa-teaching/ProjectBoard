updating-remote
updateTitle: aString

	self title == aString 
		ifFalse: [self title: aString.
			self titleModel contents: aString.
			self boardProvider updateCard: self.
			self updateLabelIcons.
			self resizeCard].