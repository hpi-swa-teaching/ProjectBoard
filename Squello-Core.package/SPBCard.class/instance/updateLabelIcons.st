updating-local
updateLabelIcons

	| newLabel |
	self labelModels do: [:label | label abandon].
	self labelModels: OrderedCollection new.
  
	self labels 
		do: [:label | newLabel := label asMorph.
			self labelModels add: newLabel.
			self addMorph: newLabel.].
	
	self alignLabels.
	self column ifNotNil: [self resizeCard. self column resizeToFitCards].
