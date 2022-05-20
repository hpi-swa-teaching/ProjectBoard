accessing
setText: aText

	self observer ifNotNil: [self observer updateText: self text].
	super setText: aText.