toolbuilder-sidebar
buildSidebarCloseButtonSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self sidebar;
		frame: (0@0.4 corner: 1@0.5);
		name: #sidebarCloseButton;
		label: #getCloseButtonLabel;
		action: #onCloseButton;
		yourself.