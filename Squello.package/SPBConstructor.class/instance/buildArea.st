accessing
buildArea

	self boardArea: PasteUpMorph new.
	self boardArea
		width: ((self scrollPane width) max: (self lanes size * 300 + ((self lanes size - 1) * 50)));
		height:  (700 max: (self scrollPane height)).
	self scrollPane scroller addMorph: self boardArea.