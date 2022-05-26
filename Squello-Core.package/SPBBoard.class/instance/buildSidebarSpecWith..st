toolbuilder
buildSidebarSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		frame: (0.75@0 corner: 1@1);
		children: {
			self buildSidebarTitleSpecWith: aBuilder.
			self buildSidebarDescriptionSpecWith: aBuilder};
		yourself.
		