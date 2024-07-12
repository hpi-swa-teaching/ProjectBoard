toolbuilder-manage panel
buildLocalBoardPanelSpecWith: aBuilder withName: aName

	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		horizontalResizing: #rigid;
		minimumHeight: (self class minHighButton px);
		children: {
			self buildOpenLocalBoardButtonSpecWith: aBuilder withBoardName: aName.
			self buildRenameLocalBoardButtonSpecWith: aBuilder withBoardName: aName.
			self buildDeleteLocalBoardButtonSpecWith: aBuilder withBoardName: aName.
			self buildLocalBoardNameSpecWith: aBuilder withBoardName: aName.
		};
		yourself.