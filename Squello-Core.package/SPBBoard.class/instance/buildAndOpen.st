initialize-release
buildAndOpen

	| window |
	self createLanes.
	
	self
		provider: self provider;
		lanes: self lanes.
	
	window := self buildWith: SPBMorphicToolBuilder new.
	window openInWorld.
	^ window.