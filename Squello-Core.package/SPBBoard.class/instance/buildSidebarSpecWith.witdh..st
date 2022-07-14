toolbuilder
buildSidebarSpecWith: aBuilder witdh: aNumber

	^ aBuilder pluggablePanelSpec new
			name: #sidebar;
			frame: (aNumber@0 corner: 1@1);
			wantsResizeHandles: true;
			minimumWidth: 250;
			children: {
				self buildSidebarTitleSpecWith: aBuilder.
				self buildSidebarAssigneePanelSpecWith: aBuilder. 
				self buildSidebarLabelPanelSpecWith: aBuilder.
				self buildSidebarDescriptionSpecWith: aBuilder};
			yourself.