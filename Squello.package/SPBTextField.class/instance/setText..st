accessing
setText: aText

	self observer ifNotNil: [self observer updateText: aText].
	super setText: aText.
	