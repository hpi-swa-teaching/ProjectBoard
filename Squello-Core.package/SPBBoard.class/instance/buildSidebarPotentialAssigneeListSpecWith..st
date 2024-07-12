toolbuilder-sidebar
buildSidebarPotentialAssigneeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self sidebar;
		frame: (0.5@0 corner: 1@1);
		name: #sidebarPotentialAssigneeList;
		list: #potentialAssigneesList;
		getSelected: #potentialAssigneeSelected;
		setSelected: #potentialAssigneeSelected:;
		dragItem: #dragFromPotentialAssignees:;
		dropAccept: #wantsAssigneeDrop:;
		dropItem: #dropOnPotentialAssignees:at:;
		yourself.