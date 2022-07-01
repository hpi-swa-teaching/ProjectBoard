updating
updateLabelIcons

	| newLabel |
	self labelMorphs do: [:each | each abandon].
	self labelMorphs removeAll.

	self labels withIndexDo: [:label :i | 
		newLabel := label asMorph.
		self labelMorphs add: newLabel.
		self addMorph: newLabel.
		self alignLabels].
	self lane ifNotNil: [self resizeCard].