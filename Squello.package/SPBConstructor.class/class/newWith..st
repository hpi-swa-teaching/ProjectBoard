as yet unclassified
newWith: aString

	| board id |
	board := self new.
	id := board provider getBoardIDFromUrl: aString.
	board lanes: (board getLanes: id).
	board 
		buildArea;
		buildLanes;
		yourself.
	^ board.
	