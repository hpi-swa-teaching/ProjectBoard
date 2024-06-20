toolbuilder-manage panel
buildManageLocalBoardPanelSpecWith: aBuilder
"We just reuse this from the SquotBrowser, idk if this is good"
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #vertical;
		children: {
			self buildLocalBoardsListSpecWith: aBuilder.
			self buildLocalBoardCommonActionsSpecWith: aBuilder.
		};
		yourself.

	"^ SquotGUIUtilities buildVerticalLayout: {
		self buildLocalBoardsListSpecWith: aBuilder.
		self buildLocalBoardCommonActionsSpecWith: aBuilder.
	} with: aBuilder."