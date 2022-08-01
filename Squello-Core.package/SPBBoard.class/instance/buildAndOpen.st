initialize-release
buildAndOpen

	| window |
	self createColumns.
	self createSidebar.
	window := self buildWith: SPBMorphicToolBuilder new.
	window openInWorld.
	^ window.