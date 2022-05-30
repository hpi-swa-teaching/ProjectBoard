initialisation
buildAndOpen

	| board window |
	self createLanes.
	
	board := SPBBoard new.
	board
		provider: self provider;
		lanes: self lanes;
		constructor: self.
	
	window := board buildWith: SPBMorphicToolBuilder new.
	window openInWorld.
	^ window.