building
setupMouseEvents

	self card on: #click send: #becomeActiveCard to: self card.
	self card on: #startDrag send: #startDragging to: self card.
