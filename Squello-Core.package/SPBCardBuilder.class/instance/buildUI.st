building
buildUI
	
	self card titleMorph contents: self card title.
	self card 
		updateAssigneeCount;
		updateLabelIcons.
	
	self card setCardHeight.
	self card assigneeMorph position: (self card position x + (self card extent x - 100)) @ (self card position y + (self card extent y - 20)).