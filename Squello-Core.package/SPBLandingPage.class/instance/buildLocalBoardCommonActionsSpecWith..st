toolbuilder-manage panel
buildLocalBoardCommonActionsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
			model: self;
			children: {
				self buildDeleteAllLocalBoardsButtonSpecWith: self usedBuilder. 
				self buildNewLocalBoardButtonSpecWith: self usedBuilder
			};
			layout: #horizontal;
			verticalResizing: #shrinkWrap;
			yourself.
	