dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent

	super acceptDroppingMorph: aMorph event: anEvent.
	
	self dropped ifNil: [^ self].	
	self actionModel perform: self dropped with: aMorph with: anEvent.