updating
updateAssigneeCount
	
	| count |
	count := self assignees size.
	self assigneeMorph contents: count asString , ' assigned'.
	self updateBalloonText.
	