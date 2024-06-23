context menu
removeAllAssignees

|size|
size := assignees size.
1 to: size do:[:a|self removeAssignee: assignees first].
"labels do:[:label | self removeLabel: label]."
self column board sidebar
	changed: #potentialAssigneesList;
	changed: #activeCardAssigneeList.