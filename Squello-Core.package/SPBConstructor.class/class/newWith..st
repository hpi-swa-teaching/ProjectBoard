instance creation
newWith: aString

	| board id projData |
	board := self new.
	projData := board provider getBoardIDFromUrl: aString.
	id := projData at: 3.
	
	board createLanes: (board getLanes: id).
	
	board buildAndOpen.
	^ board.
	