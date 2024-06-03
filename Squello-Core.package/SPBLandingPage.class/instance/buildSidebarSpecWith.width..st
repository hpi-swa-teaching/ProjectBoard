toolbuilder
buildSidebarSpecWith: aBuilder width: aNumber

	^ aBuilder pluggablePanelSpec new
		name: #sidebar;
		frame: (aNumber@0 corner: 1@1);
		wantsResizeHandles: true;
		minimumWidth: 250;
		children: {};
		yourself.