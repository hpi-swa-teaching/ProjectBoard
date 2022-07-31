updating-local
resizeCard

	self setCardHeight.
	self assigneeMorph position: (self position x + (self extent x - 100)) @ (self position y + (self extent y - 20)).
	self column alignCards.
	self column resizeBottomDetection.
	self resizeIndicatorFields.