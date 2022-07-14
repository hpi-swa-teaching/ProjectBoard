toolbuilder
buildSidebarAssigneePanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
			model: self;
			name: #sidebarAssigneeList;
			frame: (0@0.1 corner: 1@0.25);
			minimumHeight: 20;
			children: {
				self buildSidebarAssigneeListSpecWith: aBuilder.
				self buildSidebarPotentialAssigneeListSpecWith: aBuilder};
			yourself.