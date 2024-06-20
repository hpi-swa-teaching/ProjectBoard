toolbuilder-manage panel
buildLocalBoardPanelSpecWith: aBuilder withName: aName

	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		minimumExtent: (200 px @ 50 px);
		children: {
			self buildLocalBoardNameSpecWith: aBuilder withBoardName: aName.
			self buildOpenLocalBoardButtonSpecWith: aBuilder withBoardName: aName.
			self buildRenameLocalBoardButtonSpecWith: aBuilder withBoardName: aName.
			self buildDeleteLocalBoardButtonSpecWith: aBuilder withBoardName: aName.
		};
		yourself.