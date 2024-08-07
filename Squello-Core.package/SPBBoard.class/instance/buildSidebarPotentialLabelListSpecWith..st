toolbuilder-sidebar
buildSidebarPotentialLabelListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self sidebar;
		frame: (self midOfSidebar@0 corner: 1@1);
		name: #sidebarPotentialLabelList;
		list: #potentialLabelsList;
		getSelected: #potentialLabelSelected;
		setSelected: #potentialLabelSelected:;
		dragItem: #dragFromPotentialLabels:;
		dropAccept: #wantsLabelDrop:;
		dropItem: #dropOnPotentialLabels:at:;
		icon: #potentialLabelIcon:;
		yourself.