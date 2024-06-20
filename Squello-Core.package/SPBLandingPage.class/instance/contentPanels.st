content-panels
contentPanels
	"each of the panel object contains a name and a list of symbols to perform the building"

	^ {self recentBoardsPanel. self openBoardPanel. self manageLocalBoardsPanel. self loginLogoutPanel}.