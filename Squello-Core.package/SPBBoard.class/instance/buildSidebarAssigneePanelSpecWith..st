toolbuilder-sidebar
buildSidebarAssigneePanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self sidebar;
		frame: (0@self endTitleSidebar corner: 1@self endAssigneeList);
		name: #sidebarAssigneeList;
		minimumHeight: 20;
		children: {self buildSidebarAssigneeListSpecWith: aBuilder.
			self buildSidebarPotentialAssigneeListSpecWith: aBuilder};
		yourself.