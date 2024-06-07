accessing
setupMouseEvents

	self on: #startDrag send: #startDragging to: self.
	self on: #mouseDown send: #value: to:[:evt|
         evt redButtonPressed ifTrue:[self becomeActiveCard].
         evt yellowButtonPressed ifTrue:[self openContextMenu] ].