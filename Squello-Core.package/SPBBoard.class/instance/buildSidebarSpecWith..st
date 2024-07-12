toolbuilder-sidebar
buildSidebarSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		name: #sidebar;
		frame: (self widthColumnArea@0 corner: 1@1);
		wantsResizeHandles: true;
		minimumWidth: self minWidthSidebar;
		children: {self buildSidebarTitleSpecWith: aBuilder.
			self buildSidebarAssigneePanelSpecWith: aBuilder. 
			self buildSidebarLabelPanelSpecWith: aBuilder.
			self buildSidebarDescriptionSpecWith: aBuilder.
			self buildSidebarCloseButtonSpecWith: aBuilder.};
		yourself.
		