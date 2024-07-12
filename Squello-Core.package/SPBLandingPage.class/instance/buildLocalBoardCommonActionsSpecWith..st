toolbuilder-manage panel
buildLocalBoardCommonActionsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		verticalResizing: #shrinkWrap;
		children: {
			self buildDeleteAllLocalBoardsButtonSpecWith: self usedBuilder. 
			self buildNewLocalBoardButtonSpecWith: self usedBuilder
		};
		yourself.
