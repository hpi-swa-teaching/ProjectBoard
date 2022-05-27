toolbuilder
buildSidebarAssigneeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		name: #sidebarAssigneeList;
		frame: (0@0 corner: 0.5@1);
		list: #activeCardAssigneeList;
		getSelected: #assigneeSelected;
		setSelected: #assigneeSelected:;
		dropAccept: #wantsAssigneeDrop:;
		dropItem: #dropOnAssigneeList:at:;
		yourself.
		