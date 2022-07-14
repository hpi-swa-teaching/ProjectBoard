updating
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
	self lane
		ifNotNil: [self resizeCard. self lane resizeToFitCards].
