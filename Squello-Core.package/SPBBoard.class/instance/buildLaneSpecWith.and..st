toolbuilder
buildLaneSpecWith: aBuilder and: anSPBLane

	^ aBuilder pluggablePanelSpec new
			minimumExtent: (300@600);
			children: {self buildLaneHeaderSpecWith: aBuilder and: anSPBLane.
				self buildLaneBodySpecWith: aBuilder and: anSPBLane};
			name: ('lane', anSPBLane id asString) asSymbol;
			yourself.