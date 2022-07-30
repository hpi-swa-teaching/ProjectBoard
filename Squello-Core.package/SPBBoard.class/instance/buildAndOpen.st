initialize-release
buildAndOpen

	| window |
	self createColumns.
	
	window := self buildWith: SPBMorphicToolBuilder new.
	window openInWorld.
	^ window.