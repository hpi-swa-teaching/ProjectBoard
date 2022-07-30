creation
moveColumn

	| ghost |
	ghost := SPBGhostColumn new
		openInWorld;
		sourceColumn: self;
		yourself.
		
	ghost activeHand attachMorph: ghost.