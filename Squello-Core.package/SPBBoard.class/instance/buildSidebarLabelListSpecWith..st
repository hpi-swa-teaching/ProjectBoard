toolbuilder
buildSidebarLabelListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self sidebar;
		name: #sidebarLabelList;
		frame: (0@0 corner: 0.5@1);
		list: #activeCardLabelList;
		getSelected: #labelSelected;
		setSelected: #labelSelected:;
		dragItem: #dragFromLabels:;
		dropAccept: #wantsLabelDrop:;
		dropItem: #dropOnLabels:at:;
		icon: #labelIcon:;
		yourself.