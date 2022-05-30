as yet unclassified
buildUI

	| title assignees |	
	title := (TextMorph new 
			contents: self card title;
			wrapFlag: true;
			lock).
	assignees := (TextMorph new lock).
	
	self card 
		titleMorph: title;
		assigneeMorph: assignees;
		addMorph: title;
		addMorph: assignees;
		updateAssigneeCount.
		
	self card titleMorph extent: 280 @ 21.
	self card assigneeMorph position: self card position x + (self card extent x - 180) @ self card position y + (self card extent y - assignees extent y)
	
	
	