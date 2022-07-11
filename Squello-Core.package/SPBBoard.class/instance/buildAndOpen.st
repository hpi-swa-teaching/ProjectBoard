initialize-release
buildAndOpen

	| window |
	self createLanes.
	
	window := self buildWith: SPBMorphicToolBuilder new.
	window openInWorld.
	^ window.