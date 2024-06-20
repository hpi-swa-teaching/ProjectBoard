toolbuilder-manage panel
buildManageLocalBoardPanelSpecWith: aBuilder
"We just reuse this from the SquotBrowser, idk if this is good"

	^ SquotGUIUtilities buildVerticalLayout: {
		self buildLocalBoardsListSpecWith: aBuilder.
		self buildLocalBoardCommonActionsSpecWith: aBuilder.
	} with: aBuilder