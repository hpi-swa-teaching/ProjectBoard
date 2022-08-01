updating-local
resizeCard

	self setCardHeight.
	self assigneeMorph position: self position + self extent - self assigneeOffset.
	self column 
		alignCards;
		resizeBottomDetection.
	self resizeIndicatorFields.