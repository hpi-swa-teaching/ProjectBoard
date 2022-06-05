toolbuilder
buildSidebarLabelPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		name: #sidebarLabelList;
		frame: (0@0.25 corner: 1@0.4);
		minimumHeight: 20;
		children: {
			self buildSidebarLabelListSpecWith: aBuilder.
			self buildSidebarPotentialLabelListSpecWith: aBuilder}
		yourself.
		