toolbuilder-sidebar
buildSidebarLabelListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self sidebar;
		frame: (0@0 corner: self midOfSidebar@1);
		name: #sidebarLabelList;
		list: #activeCardLabelList;
		getSelected: #labelSelected;
		setSelected: #labelSelected:;
		dragItem: #dragFromLabels:;
		dropAccept: #wantsLabelDrop:;
		dropItem: #dropOnLabels:at:;
		icon: #labelIcon:;
		yourself.