toolbuilder
buildMainLayoutPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		frame: (0@0 corner: 1@1);
		layout: #horizontal;
		children: {
			self buildSidebarSpecWith: aBuilder.
			self buildContentPanelSpecWith: aBuilder.
		};
		yourself.