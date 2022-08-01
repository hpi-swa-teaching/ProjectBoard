toolbuilder
buildSidebarPotentialLabelListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
			model: self sidebar;
			name: #sidebarPotentialLabelList;
			frame: (0.5@0 corner: 1@1);
			list: #potentialLabelsList;
			getSelected: #potentialLabelSelected;
			setSelected: #potentialLabelSelected:;
			dragItem: #dragFromPotentialLabels:;
			dropAccept: #wantsLabelDrop:;
			dropItem: #dropOnPotentialLabels:at:;
			icon: #potentialLabelIcon:;
			yourself.