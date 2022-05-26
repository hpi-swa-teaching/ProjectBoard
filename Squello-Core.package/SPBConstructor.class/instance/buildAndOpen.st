initialisation
buildAndOpen

	| board window |
	board := SPBBoard new.
	board
		provider: self provider;
		lanes: self lanes.
	
	window := board buildWith: SPBMorphicToolBuilder new.
	window openInWorld.
	^ window.