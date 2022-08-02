updating-local
updateAssigneeCount
	
	| count |
	count := self assignees size.
	self assigneeModel contents: count asString , ' assigned'.
	self updateBalloonText.
	