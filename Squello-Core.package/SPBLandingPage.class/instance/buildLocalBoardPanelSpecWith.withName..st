toolbuilder-manage panel
buildLocalBoardPanelSpecWith: aBuilder withName: aName

	^ "aBuilder build:" (aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		minimumHeight: 50px;
		children: {
			self buildLocalBoardNameSpecWith: aBuilder withBoardName: aName.
			self buildOpenLocalBoardButtonSpecWith: aBuilder withBoardName: aName.
			self buildRenameLocalBoardButtonSpecWith: aBuilder withBoardName: aName.
			self buildDeleteLocalBoardButtonSpecWith: aBuilder withBoardName: aName.
		};
		yourself).
		