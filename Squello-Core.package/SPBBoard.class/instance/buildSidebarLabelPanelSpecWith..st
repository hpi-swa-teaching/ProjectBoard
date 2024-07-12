toolbuilder-sidebar
buildSidebarLabelPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self sidebar;
		frame: (0@0.25 corner: 1@0.4);
		name: #sidebarLabelList;
		minimumHeight: 20;
		children: {self buildSidebarLabelListSpecWith: aBuilder.
			self buildSidebarPotentialLabelListSpecWith: aBuilder};
		yourself.