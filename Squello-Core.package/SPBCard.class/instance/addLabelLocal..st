updating-local
addLabelLocal: anSPBLabel

	(self labels anySatisfy: [:each | each = anSPBLabel]) 
		ifTrue: [^ self].

	self labels add: anSPBLabel.
	self updateLabelIcons.