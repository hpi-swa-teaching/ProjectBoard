building
buildAndOpen

	| window |
	self createColumns.
	self createSidebar.
	window := self buildWith: SPBMorphicToolBuilder new.
	self setupColumns.
	window openInWorld.
	^ window.