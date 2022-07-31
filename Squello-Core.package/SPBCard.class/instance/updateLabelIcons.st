updating-local
updateLabelIcons

	| newLabel |
	self labelMorphs
		do: [:each | each abandon].
	self labelMorphs removeAll.
  
	self labels 
		do: [:label | newLabel := label asMorph.
			self labelMorphs add: newLabel.
			self addMorph: newLabel.
			self alignLabels].
	self column
		ifNotNil: [self resizeCard. self column resizeToFitCards].
