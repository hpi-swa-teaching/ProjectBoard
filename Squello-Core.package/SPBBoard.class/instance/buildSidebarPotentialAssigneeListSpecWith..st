toolbuilder
buildSidebarPotentialAssigneeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		name: #sidebarPotentialAssigneeList;
		frame: (0.5@0 corner: 1@1);
		list: #potentialAssigneesList;
		getSelected: #potentialAssigneeSelected;
		setSelected: #potentialAssigneeSelected:;
		dragItem: #dragItem:;
"		dragStarted: #dragStarted;"
		yourself.
		