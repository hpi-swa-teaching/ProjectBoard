creation
moveLane

	| ghost |
	ghost := SPBGhostLane new
		openInWorld;
		sourceLane: self;
		yourself.
		
	ghost activeHand attachMorph: ghost.
	"self lane activeHand attachMorph: self lane."