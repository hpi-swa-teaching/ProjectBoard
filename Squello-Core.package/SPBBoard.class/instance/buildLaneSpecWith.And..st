toolbuilder
buildLaneSpecWith: aBuilder And: aSPBLane

	^ aBuilder pluggablePanelSpec new
			minimumExtent: (300@600);
			children: {
				self buildLaneHeaderSpecWith: aBuilder And: aSPBLane.
				self buildLaneBodySpecWith: aBuilder And: aSPBLane.
			};
			name: ('lane', aSPBLane id asString) asSymbol;
			yourself.