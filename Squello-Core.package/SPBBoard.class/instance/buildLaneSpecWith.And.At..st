toolbuilder
buildLaneSpecWith: aBuilder And: aSPBLane At: aNumber

	^ aBuilder pluggablePanelSpec new
		minimumExtent: (300@2000);
		children: {
			self buildLaneHeaderSpecWith: aBuilder And: aSPBLane.
			self buildLaneBodySpecWith: aBuilder And: aSPBLane.
		};
		name: ('lane' , aSPBLane id asString) asSymbol;
		verticalResizing: #spaceFill;
		yourself.