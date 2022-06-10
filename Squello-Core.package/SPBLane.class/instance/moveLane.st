creation
moveLane

	| ghost |
	ghost := SPBGhostLane new
		openInWorld;
		sourceLane: self;
		yourself.
		
	ghost activeHand attachMorph: ghost.
	
	"self pasteup activeHand attachMorph: self pasteup duplicate."
	