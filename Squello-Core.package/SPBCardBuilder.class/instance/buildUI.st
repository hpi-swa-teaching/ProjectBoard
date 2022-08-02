building
buildUI
	
	self card titleModel contents: self card title.
	self card 
		updateAssigneeCount;
		updateLabelIcons;
		setCardHeight.
	self card assigneeModel position: self card position + self card extent - self card assigneeOffset.
	self card resizeIndicatorFields.