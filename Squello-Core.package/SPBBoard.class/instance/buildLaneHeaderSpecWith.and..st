toolbuilder
buildLaneHeaderSpecWith: aBuilder and: aSPBLane

	^ aBuilder pluggablePanelSpec new
			frame: (0@0 corner: 1@0.15);
			children: {
				self buildLaneHeaderTitleSpecWith: aBuilder and: aSPBLane.
				self buildLaneHeaderAddCardButtonSpecWith: aBuilder and: aSPBLane.
				self buildLaneHeaderMoveLaneButtonSpecWith: aBuilder and: aSPBLane.
			};
			yourself.