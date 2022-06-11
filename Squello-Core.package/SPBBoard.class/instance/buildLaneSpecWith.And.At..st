toolbuilder
buildLaneSpecWith: aBuilder And: aSPBLane At: aNumber

	^ aBuilder pluggablePanelSpec new
		minimumExtent: (300@600);
		"frame: (0@0 corner: 1@1);"
		children: {
			self buildLaneHeaderSpecWith: aBuilder And: aSPBLane.
			self buildLaneBodySpecWith: aBuilder And: aSPBLane.
		};
		name: ('lane', aSPBLane id asString) asSymbol;
		"verticalResizing: #spaceFill;"
		yourself.