toolbuilder-manage panel
buildManageLocalBoardPanelSpecWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #vertical;
		children: {
			self buildLocalBoardsListSpecWith: aBuilder.
			self buildLocalBoardCommonActionsSpecWith: aBuilder.
		};
		yourself.