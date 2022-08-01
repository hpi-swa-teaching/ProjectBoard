building
buildUI
	
	self card titleMorph contents: self card title.
	self card 
		updateAssigneeCount;
		updateLabelIcons;
		setCardHeight.
	self card assigneeMorph position: self card position + self card extent - self card assigneeOffset.
	self card resizeIndicatorFields.