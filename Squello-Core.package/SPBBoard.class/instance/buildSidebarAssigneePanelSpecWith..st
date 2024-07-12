toolbuilder-sidebar
buildSidebarAssigneePanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self sidebar;
		frame: (0@0.1 corner: 1@0.25);
		name: #sidebarAssigneeList;
		minimumHeight: 20;
		children: {self buildSidebarAssigneeListSpecWith: aBuilder.
			self buildSidebarPotentialAssigneeListSpecWith: aBuilder};
		yourself.