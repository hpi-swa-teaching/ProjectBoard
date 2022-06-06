updating
updateLabelIcons

	| newLabel |
	self labels withIndexDo: [:label :i | 
		newLabel := label asForm asMorph.
		self addMorph: newLabel.
		newLabel position: ((newLabel extent x + 1 * i) + 5 @ self extent y - newLabel extent y - 5) + self position].