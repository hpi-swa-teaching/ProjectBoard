updating-local
resizeCard

	self setCardHeight.
	self assigneeModel position: self position + self extent - self assigneeOffset.
	self column 
		alignCards;
		resizeBottomDetection.
	self resizeIndicatorFields.