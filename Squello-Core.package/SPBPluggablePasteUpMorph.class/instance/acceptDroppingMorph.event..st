dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent

	super acceptDroppingMorph: aMorph event: anEvent.
	
	self dropped 
		ifNil: [^ self.].
	self dropped value: aMorph value: anEvent.