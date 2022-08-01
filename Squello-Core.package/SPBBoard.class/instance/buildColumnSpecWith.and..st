toolbuilder
buildColumnSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggablePanelSpec new
		minimumExtent: self class columnMinimumExtent;
		children: {self buildColumnHeaderSpecWith: aBuilder and: anSPBColumn.
			self buildColumnBodySpecWith: aBuilder and: anSPBColumn};
		name: ('column', anSPBColumn id asString) asSymbol;
		yourself.