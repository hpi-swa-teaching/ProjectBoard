updating-local
addLabelLocal: anSPBLabel

	(self labels anySatisfy: [:label | label = anSPBLabel]) 
		ifTrue: [^ self].

	self labels add: anSPBLabel.
	self updateLabelIcons.