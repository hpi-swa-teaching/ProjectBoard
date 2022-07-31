updating-local
removeLabelLocal: anSPBLabel

	self labels remove: anSPBLabel
		ifAbsent: [].
	self updateLabelIcons.