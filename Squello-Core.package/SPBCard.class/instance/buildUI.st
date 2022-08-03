initialization
buildUI
	
	self titleModel contents: self title.
	self 
		updateAssigneeCount;
		updateLabelIcons;
		setCardHeight.
	self assigneeModel position: self position + self extent - self assigneeOffset.
	self resizeIndicatorFields.