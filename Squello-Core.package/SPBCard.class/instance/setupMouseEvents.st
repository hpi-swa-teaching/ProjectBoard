accessing
setupMouseEvents

	self on: #click send: #becomeActiveCard to: self.
	self on: #startDrag send: #startDragging to: self.