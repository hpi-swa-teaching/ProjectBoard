building
buildUI

	| title assignees |	
	title := (TextMorph new 
			contents: self card title;
			wrapFlag: true;
			lock).
	assignees := (TextMorph new lock).
	title width: 280.
	
	self card 
		titleMorph: title;
		assigneeMorph: assignees;
		addMorph: title;
		addMorph: assignees;
		updateAssigneeCount;
		updateLabelIcons.
	
	self card setCardHeight.
	self card assigneeMorph position: (self card position x + (self card extent x - 100)) @ (self card position y + (self card extent y - 20)).
	
	
	