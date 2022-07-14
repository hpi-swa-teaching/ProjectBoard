toolbuilder
buildLaneSpecWith: aBuilder and: aSPBLane

	^ aBuilder pluggablePanelSpec new
			minimumExtent: (300@600);
			children: {
				self buildLaneHeaderSpecWith: aBuilder and: aSPBLane.
				self buildLaneBodySpecWith: aBuilder and: aSPBLane.
			};
			name: ('lane', aSPBLane id asString) asSymbol;
			yourself.