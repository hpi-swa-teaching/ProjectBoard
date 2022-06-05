toolbuilder
buildSidebarSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		frame: (0.75@0 corner: 1@1);
		wantsResizeHandles: true;
		children: {
			self buildSidebarTitleSpecWith: aBuilder.
			self buildSidebarAssigneePanelSpecWith: aBuilder. 
			self buildSidebarLabelPanelSpecWith: aBuilder.
			self buildSidebarDescriptionSpecWith: aBuilder.
			self buildSyncButton: aBuilder};
		yourself.
		