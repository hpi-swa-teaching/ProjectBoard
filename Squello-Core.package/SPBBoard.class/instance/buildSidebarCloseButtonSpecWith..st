toolbuilder-sidebar
buildSidebarCloseButtonSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self sidebar;
		frame: (0@self endUpperPartSidebar corner: 1@self midOfSidebar);
		name: #sidebarCloseButton;
		label: #getCloseButtonLabel;
		action: #onCloseButton;
		yourself.