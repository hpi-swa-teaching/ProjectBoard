toolbuilder-manage panel
buildLocalBoardCommonActionsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
			model: self;
			children: #buildLocalBoardCommonActionChildren;
			layout: #horizontal;
			verticalResizing: #shrinkWrap;
			yourself.
	