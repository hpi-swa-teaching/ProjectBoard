context menu
removeAllAssignees

	| size |
	size := assignees size.
	1 to: size do:[:a | self removeAssignee: assignees first.].
	self column board sidebar
		changed: #potentialAssigneesList;
		changed: #activeCardAssigneeList.