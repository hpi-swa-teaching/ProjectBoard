updating
updateLabelIcons

	| newLabel |
	self labelMorphs do: [:each | each abandon].
	self labels withIndexDo: [:label :i | 
		newLabel := label asForm asMorph.
		newLabel balloonText: label title.
		self labelMorphs add: newLabel.
		self addMorph: newLabel.
		newLabel position: ((newLabel extent x + 1 * i) + 5 @ self extent y - newLabel extent y - 5) + self position].