toolbuilder
buildLaneHeaderSpecWith: aBuilder and: anSPBLane

	^ aBuilder pluggablePanelSpec new
			frame: (0@0 corner: 1@0.15);
			children: {self buildLaneHeaderTitleSpecWith: aBuilder and: anSPBLane.
				self buildLaneHeaderAddCardButtonSpecWith: aBuilder and: anSPBLane.
				self buildLaneHeaderMoveLaneButtonSpecWith: aBuilder and: anSPBLane};
			yourself.