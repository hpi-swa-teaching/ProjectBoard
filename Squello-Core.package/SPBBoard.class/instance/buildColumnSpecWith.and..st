toolbuilder
buildColumnSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggablePanelSpec new
			minimumExtent: (300@600);
			children: {self buildColumnHeaderSpecWith: aBuilder and: anSPBColumn.
				self buildColumnBodySpecWith: aBuilder and: anSPBColumn};
			name: ('column', anSPBColumn id asString) asSymbol;
			yourself.