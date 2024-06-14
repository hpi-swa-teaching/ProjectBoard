initialization
buildUI
	
	self titleModel contents: self title.
	self 
		updateAssigneeCount;
		updateLabelIcons;
		setCardHeight.
	self titleModel position: self position + (self padding@self padding).
	self assigneeModel position: self position + self extent - self assigneeOffset.
	self statusModel position: self position + self extent - self statusOffset.
	self resizeIndicatorFields.
	self applyUserInterfaceTheme.