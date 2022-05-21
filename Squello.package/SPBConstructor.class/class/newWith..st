instance creation
newWith: aString

	| board id projData |
	board := self new.
	projData := board provider getBoardIDFromUrl: aString.
	id := projData at: 3.
	board lanes: (board getLanes: id).
	board 
		buildBoard;
		buildLanes;
		buildSidebar;
		yourself.
	^ board.
	