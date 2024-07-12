toolbuilder-sidebar
buildSidebarLabelPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self sidebar;
		frame: (0@self endAssigneeList corner: 1@self endUpperPartSidebar);
		name: #sidebarLabelList;
		minimumHeight: 20;
		children: {self buildSidebarLabelListSpecWith: aBuilder.
			self buildSidebarPotentialLabelListSpecWith: aBuilder};
		yourself.