updating
updateAssigneeCount

	self assigneeMorph contents: self assignees size asString , ' assigned'.
	self updateBalloonText.
	