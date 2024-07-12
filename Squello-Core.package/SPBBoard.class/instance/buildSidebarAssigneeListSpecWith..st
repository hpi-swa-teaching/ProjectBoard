toolbuilder-sidebar
buildSidebarAssigneeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self sidebar;
		frame: (0@0 corner: 0.5@1);
		name: #sidebarAssigneeList;
		list: #activeCardAssigneeList;
		getSelected: #assigneeSelected;
		setSelected: #assigneeSelected:;
		dragItem: #dragFromAssignees:;
		dropAccept: #wantsAssigneeDrop:;
		dropItem: #dropOnAssignees:at:;
		yourself.