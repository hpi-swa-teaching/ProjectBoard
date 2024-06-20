toolbuilder
buildSidebarCloseButtonSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self sidebar;
		name: #sidebarCloseButton;
		frame: (0@0.4 corner: 1@0.5);
		label: #getCloseButtonLabel;
		action: #onCloseButton;
		yourself.